#include "dmach76.h"


int row_pins[ROW_COUNT] = {1, 0, 2, 3, 4, 5};
int col_pins[COL_COUNT] = {6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19};

int layer[ROW_COUNT * COL_COUNT];
int layer_shift[ROW_COUNT * COL_COUNT];

// raw keyboard presses: 8 bits for 8 scans to handle debounce
int raw_presses[KEY_COUNT] = {0};
int presses[KEY_COUNT] = {0};


int fn_callback(void) {
    if (scancode_presses[KBD_LSHIFT]) {
        reboot_board();
    }
    if (scancode_presses[KEY_ESC]) {
        if (scancode_presses[KEY_1]) {
            change_layout(LAYOUT_QWERTY);
            return 1;
        }
        else if (scancode_presses[KEY_2]) {
            change_layout(LAYOUT_DVORAK);
            return 1;
        }
        else if (scancode_presses[KEY_3]) {
            change_layout(LAYOUT_COLEMAK);
            return 1;
        }
        if (scancode_presses[KEY_INSERT] && scancode_presses[KEY_DELETE] && scancode_presses[KEY_ENTER]) {
            reboot_board();
            return 1;  // ;)
        }
    }

    return 0;
}

int main() {
    init_keyboard(ROW_COUNT, COL_COUNT);
    init_board(row_pins, col_pins);
    init_usb();
    change_layout(LAYOUT_QWERTY);

    while(1) {
        clear_usb_keys();
        scan_matrix();
        calculate_presses(&fn_callback);
        usb_keyboard_send();
        _delay_ms(1);
    }
}
