#ifndef controller_common_h__
#define controller_common_h__


#define HIGH 0x1
#define LOW  0x0


#define INPUT 0x0
#define OUTPUT 0x1
#define INPUT_PULLUP 0x2


#define bitRead(value, bit) (((value) >> (bit)) & 0x01)
#define bitSet(value, bit) ((value) |= (1UL << (bit)))
#define bitClear(value, bit) ((value) &= ~(1UL << (bit)))
#define bitWrite(value, bit, bitvalue) (bitvalue ? bitSet(value, bit) : bitClear(value, bit))


/*
DDRx - Data Direction Register for Port x
- read/write
- sets input/output mode

PORTx - Data Register for Port x
- read/write
- input: control pull-ups
- output: activate / deactivate (set high/low)

PINx - Input Pins Register for Port x
- read only
*/


typedef struct {
    volatile unsigned char * ddr;
    volatile unsigned char * port;
    volatile unsigned char * pin;
    int bit;
} BoardPin;


// defined in board specific files
extern BoardPin board_pins[];
void init_board(int row_pins[], int col_pins[]);
void reboot_board();


void pinMode(int pin, int mode);
void digitalWrite(int pin, int value);
int digitalRead(int pin);


#endif // controller_common_h__
