#ifndef dmach76_h__
#define dmach76_h__


#include <stdlib.h>
#include <avr/io.h>
#include <avr/wdt.h>
#include <string.h>
#include <util/delay.h>

#include "usb_keyboard.h"
#include "usb_keyboard_extras.h"
#include "controller_common.h"
#include "keyboard_common.h"


#define ROW_COUNT 6
#define COL_COUNT 14
#define KEY_COUNT (ROW_COUNT * COL_COUNT)


// QWERTY layer
//
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Esc| 1 | 2 | 3 | 4 | 5 | - |  | = | 6 | 7 | 8 | 9 | 0 |Ins|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Tab| q | w | e | r | t | [ |  | ] | y | u | i | o | p |Del|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Fn | a | s | d | f | g | ; |  | ' | h | j | k | l | . |Ent|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Shi| z | x | c | v | b | ` |  | \ | n | m | ↑ | / | , |Shi|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |PgU|PgD|Win|Mnu|Ins|                  | ← | ↓ | → |Hom|End|
// +---+---+---+---+---+---+          +---+---+---+---+---+---+
//                     |Spc|          |BkS|
//                     +---+---+  +---+---+
//                     |Ctr| ? |  | ? |Ctr|
//                     +---+---+  +---+---+
//                     |Alt| ? |  | ? |Alt|
//                     +---+---+  +---+---+

const int layer_qwerty[ROW_COUNT * COL_COUNT] = {
//  col1         col2           col3         col4      col5        col6       col7              col8            col9            col10     col11     col12          col13      col14
    KEY_ESC,     KEY_1,         KEY_2,       KEY_3,    KEY_4,      KEY_5,     KEY_MINUS,        KEY_EQUAL,      KEY_6,          KEY_7,    KEY_8,    KEY_9,         KEY_0,     KEY_INSERT,
    KEY_TAB,     KEY_Q,         KEY_W,       KEY_E,    KEY_R,      KEY_T,     KEY_LEFT_BRACE,   KEY_RIGHT_BRACE,KEY_Y,          KEY_U,    KEY_I,    KEY_O,         KEY_P,     KEY_DELETE,
    KBD_FN,      KEY_A,         KEY_S,       KEY_D,    KEY_F,      KEY_G,     KEY_SEMICOLON,    KEY_QUOTE,      KEY_H,          KEY_J,    KEY_K,    KEY_L,         KEY_PERIOD,KEY_ENTER,
    KBD_LSHIFT,  KEY_Z,         KEY_X,       KEY_C,    KEY_V,      KEY_B,     KEY_TILDE,        KEY_BACKSLASH,  KEY_N,          KEY_M,    KEY_UP,   KEY_SLASH,     KEY_COMMA, KBD_RSHIFT,
    KEY_PAGE_UP, KEY_PAGE_DOWN, KBD_LGUI,    KBD_MENU, KEY_INSERT, KEY_SPACE, KBD_LCTRL,        KBD_RCTRL,      KEY_BACKSPACE,  KEY_LEFT, KEY_DOWN, KEY_RIGHT,     KEY_HOME,  KEY_END,
    0,           0,             0,           0,        KBD_LALT,   0,         KBD_LALT,         KBD_RALT,       0,              KBD_RALT,        0,        0,             0,         0
};


// QWERTY/shift layer
//
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Esc| ! | @ | # | $ | % | _ |  | + | ^ | & | * | ( | ) |Ins|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Tab| Q | W | E | R | T | { |  | } | Y | U | I | O | P |Del|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Fn | A | S | D | F | G | : |  | " | H | J | K | L | > |Ent|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Shi| Z | X | C | V | B | ~ |  | | | N | M | ↑ | ? | < |Shi|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |PgU|PgD|Win|Mnu|Ins|                  | ← | ↓ | → |Hom|End|
// +---+---+---+---+---+---+          +---+---+---+---+---+---+
//                     |Spc|          |Bks|
//                     +---+---+  +---+---+
//                     |Ctr| ? |  | ? |Ctr|
//                     +---+---+  +---+---+
//                     |Alt| ? |  | ? |Alt|
//                     +---+---+  +---+---+

const int layer_qwerty_shift[ROW_COUNT * COL_COUNT] = {0};


// Fn layer
//
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |   |F1 |F2 |F3 |F4 |F5 |F11|  |F12|F6 |F7 |F8 |F9 |F10|Ins|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |   |   |   |   |   |   |   |  |   |   |PgU| ↑ |PgD|   |Del|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Fn |   |   |   |   |   |   |  |   |Hom| ← | ↓ | → |End|Ent|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Shi|   |   |   |   |   |   |  |   |   |   |PgU|   |   |Shi|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |   |   |   |   |   |                  |Hom|PgD|End|   |   |
// +---+---+---+---+---+---+          +---+---+---+---+---+---+
//                     |Spc|          |BkS|
//                     +---+---+  +---+---+
//                     |Ctr| ? |  | ? |Ctr|
//                     +---+---+  +---+---+
//                     |Alt| ? |  | ? |Alt|
//                     +---+---+  +---+---+

// special combinations
// Fn + Esc + 1..3 -- layout selection (1: qwerty, 2: dvorak, 3: colemak)
// Fn + Esc + Ins + Del + Enter -- reset controller for firmware upload

const int layer_fn[ROW_COUNT * COL_COUNT] = {
//  col1         col2           col3         col4      col5        col6       col7       col8       col9       col10     col11          col12          col13      col14
    0,           KEY_F1,        KEY_F2,      KEY_F3,   KEY_F4,     KEY_F5,    KEY_F11,   KEY_F12,   KEY_F6,    KEY_F7,   KEY_F8,        KEY_F9,        KEY_F10,   0,
    0,           0,             0,           0,        0,          0,         0,         0,         0,         KEY_PAGE_UP, KEY_UP,     KEY_PAGE_DOWN, 0,         0,
    KBD_FN,      0,             0,           0,        0,          0,         0,         0,         KEY_HOME,  KEY_LEFT, KEY_DOWN,      KEY_RIGHT,     KEY_END,   KEY_ENTER,
    KBD_LSHIFT,  0,             0,           0,        0,          0,         0,         0,         0,         0,        KEY_PAGE_UP,   0,             0,         KBD_RSHIFT,
    0,           0,             0,           0,        0,          0,         KBD_LCTRL, KBD_RCTRL, 0,         KEY_HOME, KEY_PAGE_DOWN, KEY_END,       0,         0,
    0,           0,             0,           0,        KBD_LALT,   0,         KBD_LALT,  KBD_RALT,  0,         KBD_RALT, 0,             0,             0,         0
};


// DVORAK layer
//
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Esc| 1 | 2 | 3 | 4 | 5 | - |  | = | 6 | 7 | 8 | 9 | 0 |Ins|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Tab| ' | , | . | p | y | [ |  | ] | f | g | c | r | l |Del|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Fn | a | o | e | u | i |Ins|  | / | d | h | t | n | s |Ent|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Shi| ; | q | j | k | x | ` |  | \ | b | m | w | v | z |Shi|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |PgU|PgD|Hom|End|Win|                  | ← | ↓ | ↑ | → |Mnu|
// +---+---+---+---+---+---+          +---+---+---+---+---+---+
//                     |Spc|          |BkS|
//                     +---+---+  +---+---+
//                     |Ctr| ? |  | ? |Ctr|
//                     +---+---+  +---+---+
//                     |Alt| ? |  | ? |Alt|
//                     +---+---+  +---+---+

const int layer_dvorak[ROW_COUNT * COL_COUNT] = {
//  col1         col2           col3         col4      col5        col6       col7              col8            col9            col10     col11     col12          col13      col14
    KEY_ESC,     KEY_1,         KEY_2,       KEY_3,    KEY_4,      KEY_5,     KEY_MINUS,        KEY_EQUAL,      KEY_6,          KEY_7,    KEY_8,    KEY_9,         KEY_0,     KEY_INSERT,
    KEY_TAB,     KEY_QUOTE,     KEY_COMMA,   KEY_PERIOD, KEY_P,    KEY_Y,     KEY_LEFT_BRACE,   KEY_RIGHT_BRACE,KEY_F,          KEY_G,    KEY_C,    KEY_R,         KEY_L,     KEY_DELETE,
    KBD_FN,      KEY_A,         KEY_O,       KEY_E,    KEY_U,      KEY_I,     KEY_SEMICOLON,    KEY_QUOTE,      KEY_D,          KEY_H,    KEY_T,    KEY_N,         KEY_S,     KEY_ENTER,
    KBD_LSHIFT,  KEY_SEMICOLON, KEY_Q,       KEY_J,    KEY_K,      KEY_X,     KEY_COMMA,        KEY_PERIOD,     KEY_B,          KEY_M,    KEY_W,    KEY_V,         KEY_Z,     KBD_RSHIFT,
    KEY_PAGE_UP, KEY_PAGE_DOWN, KBD_LGUI,    KBD_MENU, KEY_INSERT, KEY_SPACE, KBD_LCTRL,        KBD_RCTRL,      KEY_BACKSPACE,  KEY_LEFT, KEY_DOWN, KEY_RIGHT,     KEY_HOME,  KEY_END,
    0,           0,             0,           0,        KBD_LALT,   0,         KBD_LALT,         KBD_RALT,       0,              KBD_RALT, 0,             0,             0,         0
};


// DVORAK/shift layer
//
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Esc| ! | @ | # | $ | % | _ |  | + | ^ | & | * | ( | ) |Ins|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Tab| " | < | > | P | Y | { |  | } | F | G | C | R | L |Del|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Fn | A | I | E | U | I |Ins|  | ? | D | H | T | N | S |Ent|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Shi| : | Q | J | K | X | ~ |  | | | B | M | W | V | Z |Shi|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |PgU|PgD|Hom|End|Win|                  | ← | ↓ | ↑ | → |Mnu|
// +---+---+---+---+---+---+          +---+---+---+---+---+---+
//                     |Spc|          |BkS|
//                     +---+---+  +---+---+
//                     |Ctr| ? |  | ? |Ctr|
//                     +---+---+  +---+---+
//                     |Alt| ? |  | ? |Alt|
//                     +---+---+  +---+---+

const int layer_dvorak_shift[ROW_COUNT * COL_COUNT] = {0};


// COLEMAK layer
//
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Esc| 1 | 2 | 3 | 4 | 5 | - |  | = | 6 | 7 | 8 | 9 | 0 |Ins|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Tab| q | w | f | p | g | [ |  | ] | j | l | u | y | , |Del|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Fn | a | r | s | t | d | ; |  | ' | h | n | e | i | o |Ent|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Shi| z | x | c | v | b | ` |  | \ | k | m | ↑ | / | . |Shi|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |PgU|PgD|Win|Mnu|Ins|                  | ← | ↓ | → |Hom|End|
// +---+---+---+---+---+---+          +---+---+---+---+---+---+
//                     |Spc|          |BkS|
//                     +---+---+  +---+---+
//                     |Ctr| ? |  | ? |Ctr|
//                     +---+---+  +---+---+
//                     |Alt| ? |  | ? |Alt|
//                     +---+---+  +---+---+


const int layer_colemak[ROW_COUNT * COL_COUNT] = {
//  col1         col2           col3         col4      col5        col6       col7              col8            col9            col10     col11     col12          col13      col14
    KEY_ESC,     KEY_1,         KEY_2,       KEY_3,    KEY_4,      KEY_5,     KEY_MINUS,        KEY_EQUAL,      KEY_6,          KEY_7,    KEY_8,    KEY_9,         KEY_0,     KEY_INSERT,
    KEY_TAB,     KEY_Q,         KEY_W,       KEY_F,    KEY_P,      KEY_G,     KEY_LEFT_BRACE,   KEY_RIGHT_BRACE,KEY_J,          KEY_L,    KEY_U,    KEY_Y,         KEY_P,     KEY_DELETE,
    KBD_FN,      KEY_A,         KEY_R,       KEY_S,    KEY_T,      KEY_D,     KEY_SEMICOLON,    KEY_QUOTE,      KEY_H,          KEY_N,    KEY_E,    KEY_I,         KEY_O,     KEY_ENTER,
    KBD_LSHIFT,  KEY_Z,         KEY_X,       KEY_C,    KEY_V,      KEY_B,     KEY_COMMA,        KEY_PERIOD,     KEY_K,          KEY_M,    KEY_UP,   KEY_BACKSLASH, KEY_TILDE, KBD_RSHIFT,
    KEY_PAGE_UP, KEY_PAGE_DOWN, KBD_LGUI,    KBD_MENU, KEY_INSERT, KEY_SPACE, KBD_LCTRL,        KBD_RCTRL,      KEY_BACKSPACE,  KEY_LEFT, KEY_DOWN, KEY_RIGHT,     KEY_HOME,  KEY_END,
    0,           0,             0,           0,        KBD_LALT,   0,         KBD_LALT,         KBD_RALT,       0,              KBD_RALT, 0,        0,             0,         0
};


// COLEMAK/shift layer
//
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Esc| ! | @ | # | $ | % | _ |  | + | ^ | & | * | ( | ) |Ins|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Tab| Q | W | F | P | G | { |  | } | J | L | U | Y | < |Del|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Fn | A | R | S | T | D | : |  | " | H | N | E | I | O |Ent|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |Shi| Z | X | C | V | B | ~ |  | | | K | M | ↑ | ? | > |Shi|
// +---+---+---+---+---+---+---+  +---+---+---+---+---+---+---+
// |PgU|PgD|Win|Mnu|Ins|                  | ← | ↓ | → |Hom|End|
// +---+---+---+---+---+---+          +---+---+---+---+---+---+
//                     |Spc|          |BkS|
//                     +---+---+  +---+---+
//                     |Ctr| ? |  | ? |Ctr|
//                     +---+---+  +---+---+
//                     |Alt| ? |  | ? |Alt|
//                     +---+---+  +---+---+

const int layer_colemak_shift[ROW_COUNT * COL_COUNT] = {0};


#endif // ifndef dmach76_h__
