#include <stdlib.h>
#include <avr/io.h>
#include "controller_common.h"


void pinMode(int pin, int mode) {
    BoardPin bp = board_pins[pin];
    if (mode == INPUT) {
        bitClear(*bp.ddr, bp.bit);
        digitalWrite(pin, LOW);
    }
    else if (mode == INPUT_PULLUP) {
        bitClear(*bp.ddr, bp.bit);
        digitalWrite(pin, HIGH);
    }
    else if (mode == OUTPUT) {
        bitSet(*(bp.ddr), bp.bit);
        digitalWrite(pin, LOW);
    }
    else {
        abort();
    }
}


void digitalWrite(int pin, int value) {
    BoardPin bp = board_pins[pin];
    if (value == LOW) {
        bitClear(*bp.port, bp.bit);
    }
    else {
        bitSet(*bp.port, bp.bit);
    }
}


int digitalRead(int pin) {
    BoardPin bp = board_pins[pin];
    return bitRead(*bp.pin, bp.bit);
}
