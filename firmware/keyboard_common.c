#include <stdlib.h>
#include <string.h>
#include <util/delay.h>

#include "usb_keyboard.h"
#include "usb_keyboard_extras.h"
#include "controller_common.h"
#include "keyboard_common.h"


void init_keyboard(int rows, int cols) {
    row_count = rows;
    col_count = cols;
    key_count = rows * cols;
}


void init_usb(void) {
    // init USB
    usb_init();
    while (!usb_configured()) {
        // wait until USB is configured
        _delay_ms(10);
    }
    _delay_ms(500);
}


void clear_usb_keys() {
    keyboard_modifier_keys = 0;
    for (int i=0; i<6; i++) {
        keyboard_keys[i] = 0;
    }
}


int key_index(int row, int col) {
    return row * col_count + col;
}


void change_layout(int num) {
    if (num == LAYOUT_QWERTY) {
        memcpy(layer, layer_qwerty, key_count * sizeof(int));
        memcpy(layer_shift, layer_qwerty_shift, key_count * sizeof(int));
    }
    else if (num == 2) {
        memcpy(layer, layer_dvorak, key_count * sizeof(int));
        memcpy(layer_shift, layer_dvorak_shift, key_count * sizeof(int));
    }
    else if (num == 3) {
        memcpy(layer, layer_colemak, key_count * sizeof(int));
        memcpy(layer_shift, layer_colemak_shift, key_count * sizeof(int));
    }
    else {
        memcpy(layer, layer_qwerty, key_count * sizeof(int));
        memcpy(layer_shift, layer_qwerty_shift, key_count * sizeof(int));
    }
}


void scan_matrix(void) {
    pressed_count = 0;
    for (int row=0; row<row_count; row++) {

        // activate row
        digitalWrite(row_pins[row], LOW);
        _delay_us(50);

        for (int col=0; col<col_count; col++) {
            int index = key_index(row, col);
            raw_presses[index] <<= 1;
            if (!digitalRead(col_pins[col])) {
                raw_presses[index] += 1;
                if ((raw_presses[index] & 255) == 255) {
                    presses[pressed_count++] = index;
                }
            }
        }

        // deactivate row
        digitalWrite(row_pins[row], HIGH);
    }
}


void calculate_presses(int (*fn_cb)(void)) {
    int usb_pressed_count = 0;

    int pressed_fn = 0;
    int pressed_shift = 0;

    //memset(scancode_presses, 0, sizeof(scancode_presses));
    for (int i=0; i<pressed_count; i++) {
        switch (layer[presses[i]]) {
            case KEYBOARD_FN:
                pressed_fn = 1;
                break;
            case KEYBOARD_LEFT_SHIFT:
            case KEYBOARD_RIGHT_SHIFT:
                pressed_shift = 1;
                break;
        }
    }

    if (pressed_fn) {
        // fn callbacks
        // - restart for firmware upload
        // - layout switching
        // - fn macros

        memset(scancode_presses, 0, sizeof(scancode_presses));
        for (int i=0; i<pressed_count; i++) {
            int keycode = layer[presses[i]];
            scancode_presses[keycode] = 1;
        }

        if (fn_cb()) {
            // if fn callback triggers, stop processing keys
            _delay_ms(50);
            return;
        }
    }

    for (int i=0; i<pressed_count; i++) {
        int keycode = 0;

        if (pressed_fn) {
            keycode = layer_fn[presses[i]];
        }
        else if (pressed_shift) {
            keycode = layer_shift[presses[i]];
            if (keycode == 0) {
                // no keycode found in shift layer, read keycode from the default layer
                keycode = layer[presses[i]];
            }
        }
        else {
            keycode = layer[presses[i]];
        }

        if (keycode == 0) {
            // no key assigned to the keypress
            continue;
        }

        if (keycode == KEYBOARD_FN) {
            // already handled, do nothing
            continue;
        }

        // process modifiers
        if (keycode == KEYBOARD_LEFT_CTRL) {
            keyboard_modifier_keys |= KEY_LEFT_CTRL;
        }
        else if (keycode == KEYBOARD_RIGHT_CTRL) {
            keyboard_modifier_keys |= KEY_RIGHT_CTRL;
        }
        else if (keycode == KEYBOARD_LEFT_SHIFT) {
            keyboard_modifier_keys |= KEY_LEFT_SHIFT;
        }
        else if (keycode == KEYBOARD_RIGHT_SHIFT) {
            keyboard_modifier_keys |= KEY_RIGHT_SHIFT;
        }
        else if (keycode == KEYBOARD_LEFT_ALT) {
            keyboard_modifier_keys |= KEY_LEFT_ALT;
        }
        else if (keycode == KEYBOARD_RIGHT_ALT) {
            keyboard_modifier_keys |= KEY_RIGHT_ALT;
        }
        else if (keycode == KEYBOARD_LEFT_GUI) {
            keyboard_modifier_keys |= KEY_LEFT_GUI;
        }
        else if (keycode == KEYBOARD_RIGHT_GUI) {
            keyboard_modifier_keys |= KEY_RIGHT_GUI;
        }
        else if (usb_pressed_count < 6) {
          // keypress
          keyboard_keys[usb_pressed_count++] = keycode;
        }
    }
}
