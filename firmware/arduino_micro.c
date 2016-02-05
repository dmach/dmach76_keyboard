#include <avr/wdt.h>
#include "controller_common.h"
#include "keyboard_common.h"


#define CPU_PRESCALE(n) (CLKPR = 0x80, CLKPR = (n))


BoardPin board_pins[] = {
    {&DDRD, &PORTD, &PIND, 2},   // pin0; rx
    {&DDRD, &PORTD, &PIND, 3},   // pin1; tx
    {&DDRD, &PORTD, &PIND, 1},   // pin2
    {&DDRD, &PORTD, &PIND, 0},   // pin3
    {&DDRD, &PORTD, &PIND, 4},   // pin4
    {&DDRC, &PORTC, &PINC, 6},   // pin5
    {&DDRD, &PORTD, &PIND, 7},   // pin6
    {&DDRE, &PORTE, &PINE, 6},   // pin7
    {&DDRB, &PORTB, &PINB, 4},   // pin8
    {&DDRB, &PORTB, &PINB, 5},   // pin9
    {&DDRB, &PORTB, &PINB, 6},   // pin10
    {&DDRB, &PORTB, &PINB, 7},   // pin11
    {&DDRD, &PORTD, &PIND, 6},   // pin12
    {&DDRC, &PORTC, &PINC, 7},   // pin13
    {&DDRF, &PORTF, &PINF, 7},   // pin14; a0
    {&DDRF, &PORTF, &PINF, 6},   // pin15; a1
    {&DDRF, &PORTF, &PINF, 5},   // pin16; a2
    {&DDRF, &PORTF, &PINF, 4},   // pin17; a3
    {&DDRF, &PORTF, &PINF, 1},   // pin18; a4
    {&DDRF, &PORTF, &PINF, 0},   // pin19; a5
};


void init_board(int row_pins[], int col_pins[]) {
    CPU_PRESCALE(0);

    // set everything to input
    DDRB = DDRC = DDRD = DDRE = DDRF = 0;

    // enable pullups
    PORTB = PORTC = PORTD = PORTE = PORTF = 255;

    for (int row=0; row<row_count; row++) {
        pinMode(row_pins[row], OUTPUT);
        digitalWrite(row_pins[row], HIGH);
    }
    for (int col=0; col<col_count; col++) {
        pinMode(col_pins[col], INPUT_PULLUP);
    }
}


void reboot_board(void) {
    // jump into Caterina bootloader to allow firmware upload
    // constants are taken from Caterina.c
    uint16_t bootKey = 0x7777;
    uint16_t *const bootKeyPtr = (uint16_t *)0x0800;
    *bootKeyPtr = bootKey;

    // enable watchdog
    wdt_enable(WDTO_120MS);

    // endless loop that prevents code execution before the watchdog triggers
    while (1) {}
}
