#ifndef keyboard_common_h__
#define keyboard_common_h__


#include "usb_keyboard_extras.h"


#define LAYOUT_QWERTY   1
#define LAYOUT_DVORAK   2
#define LAYOUT_COLEMAK  3


//define INDEX(row, col) (row * col_count + col)


extern int layer[];
extern int layer_shift[];
extern const int layer_fn[];

extern const int layer_qwerty[];
extern const int layer_qwerty_shift[];
extern const int layer_dvorak[];
extern const int layer_dvorak_shift[];
extern const int layer_colemak[];
extern const int layer_colemak_shift[];


int row_count;
int col_count;
int key_count;


extern int row_pins[];
extern int col_pins[];


// keyboard matrix bitmap, debounce handling
extern int raw_presses[];

// positions of actually pressed keys
extern int presses[];
int pressed_count;

// 
int scancode_presses[USB_MAX_KEY + 1];


void init_keyboard(int rows, int cols);
void init_usb(void);
void clear_usb_keys(void);
int key_index(int row, int col);
void change_layout(int num);
void scan_matrix(void);
void calculate_presses(int (*fn_callback)(void));
//void calculate_presses(void);
//extern int fn_callback(void);


#endif // keyboard_common_h__
