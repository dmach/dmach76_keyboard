#ifndef usb_keyboard_extras_h__
#define usb_keyboard_extras_h__


// fn key
#define KEYBOARD_FN                    9999


// extra key codes
// compatible with Atreus firmware

#define KEYBOARD_NON_US_SLASH_PIPE     100
#define KEYBOARD_APPLICATION           101
#define KEYBOARD_POWER                 102
#define KEYPAD_EQUAL                   103
#define KEYBOARD_F13                   104
#define KEYBOARD_F14                   105
#define KEYBOARD_F15                   106
#define KEYBOARD_F16                   107
#define KEYBOARD_F17                   108
#define KEYBOARD_F18                   109
#define KEYBOARD_F19                   110
#define KEYBOARD_F20                   111
#define KEYBOARD_F21                   112
#define KEYBOARD_F22                   113
#define KEYBOARD_F23                   114
#define KEYBOARD_F24                   115
#define KEYBOARD_EXECUTE               116
#define KEYBOARD_HELP                  117
#define KEYBOARD_MENU                  118
#define KEYBOARD_SELECT                119
#define KEYBOARD_STOP                  120
#define KEYBOARD_AGAIN                 121
#define KEYBOARD_UNDO                  122
#define KEYBOARD_CUT                   123
#define KEYBOARD_COPY                  124
#define KEYBOARD_PASTE                 125
#define KEYBOARD_FIND                  126
#define KEYBOARD_MUTE                  127
#define KEYBOARD_VOLUME_UP             128
#define KEYBOARD_VOLUME_DOWN           129
#define KEYBOARD_LOCKING_CAPS_LOCK     130
#define KEYBOARD_LOCKING_NUM_LOCK      131
#define KEYBOARD_LOCKING_SCROLL_LOCK   132
#define KEYPAD_COMMA                   133
#define KEYPAD_EQUAL_SIGN              134
#define KEYBOARD_INTERNATIONAL1        135
#define KEYBOARD_INTERNATIONAL2        136
#define KEYBOARD_INTERNATIONAL3        137
#define KEYBOARD_INTERNATIONAL4        138
#define KEYBOARD_INTERNATIONAL5        139
#define KEYBOARD_INTERNATIONAL6        140
#define KEYBOARD_INTERNATIONAL7        141
#define KEYBOARD_INTERNATIONAL8        142
#define KEYBOARD_INTERNATIONAL9        143
#define KEYBOARD_LANG1ONAL9            144
#define KEYBOARD_LANG2                 145
#define KEYBOARD_LANG3                 146
#define KEYBOARD_LANG4                 147
#define KEYBOARD_LANG5                 148
#define KEYBOARD_LANG6                 149
#define KEYBOARD_LANG7                 150
#define KEYBOARD_LANG8                 151
#define KEYBOARD_LANG9                 152
#define KEYBOARD_ALTERNATE_ERASE       153
#define KEYBOARD_SYSREQ_ATTENTION      154
#define KEYBOARD_CANCEL                155
#define KEYBOARD_CLEAR                 156
#define KEYBOARD_PRIOR                 157
#define KEYBOARD_RETURN                158
#define KEYBOARD_SEPARATOR             159
#define KEYBOARD_OUT                   160
#define KEYBOARD_OPER                  161
#define KEYBOARD_CLEAR_AGAIN           162
#define KEYBOARD_CRSEL_PROPS           163
#define KEYBOARD_EXSEL                 164

#define KEYPAD_00                      176
#define KEYPAD_000                     177
#define THOUSANDS_SEPARATOR            178
#define DECIMAL_SEPARATOR              179
#define CURRENCY_UNIT                  180
#define CURRENCY_SUBUNIT               181
#define KEYPAD_LEFT_PAREN              182
#define KEYPAD_RIGHT_PAREN             183
#define KEYPAD_LEFT_BRACE              184
#define KEYPAD_RIGHT_BRACE             185
#define KEYPAD_TAB                     186
#define KEYPAD_BACKSPACE               187
#define KEYPAD_A                       188
#define KEYPAD_B                       189
#define KEYPAD_C                       190
#define KEYPAD_D                       191
#define KEYPAD_E                       192
#define KEYPAD_F                       193
#define KEYPAD_XOR                     194
#define KEYPAD_CARET                   195
#define KEYPAD_PERCENT                 196
#define KEYPAD_LESS_THAN               197
#define KEYPAD_GREATER_THAN            198
#define KEYPAD_AMPERSAND               199
#define KEYPAD_DOUBLE_AMPERSAND        200
#define KEYPAD_PIPE                    201
#define KEYPAD_DOUBLE_PIPE             202
#define KEYPAD_COLON                   203
#define KEYPAD_POUND                   204
#define KEYPAD_SPACE                   205
#define KEYPAD_AT                      206
#define KEYPAD_BANG                    207
#define KEYPAD_MEM_STORE               208
#define KEYPAD_MEM_RECALL              209
#define KEYPAD_MEM_CLEAR               210
#define KEYPAD_MEM_ADD                 211
#define KEYPAD_MEM_SUBTRACT            212
#define KEYPAD_MEM_MULTIPLY            213
#define KEYPAD_MEM_DIVIDE              214
#define KEYPAD_PLUS_MINUS              215
#define KEYPAD_CLEAR                   216
#define KEYPAD_CLEAR_ENTRY             217
#define KEYPAD_BINARY                  218
#define KEYPAD_OCTAL                   219
#define KEYPAD_DECIMAL                 220
#define KEYPAD_HEXADECIMAL             221

#define KEYBOARD_LEFT_CTRL             224
#define KEYBOARD_LEFT_SHIFT            225
#define KEYBOARD_LEFT_ALT              226
#define KEYBOARD_LEFT_GUI              227
#define KEYBOARD_RIGHT_CTRL            228
#define KEYBOARD_RIGHT_SHIFT           229
#define KEYBOARD_RIGHT_ALT             230
#define KEYBOARD_RIGHT_GUI             231


// aliases
#define KBD_LSHIFT                     KEYBOARD_LEFT_SHIFT
#define KBD_RSHIFT                     KEYBOARD_RIGHT_SHIFT
#define KBD_LCTRL                      KEYBOARD_LEFT_CTRL
#define KBD_RCTRL                      KEYBOARD_RIGHT_CTRL
#define KBD_LALT                       KEYBOARD_LEFT_ALT
#define KBD_RALT                       KEYBOARD_RIGHT_ALT
#define KBD_LGUI                       KEYBOARD_LEFT_GUI
#define KBD_RGUI                       KEYBOARD_RIGHT_GUI
#define KBD_FN                         KEYBOARD_FN

#define KEY_COMMAND                    KEYBOARD_LEFT_GUI
#define KEY_WINDOWS                    KEYBOARD_LEFT_GUI

#define KEY_PRTSC  KEY_PRINTSCREEN
#define KEY_SCRLK  KEY_SCROLL_LOCK
#define KBD_MENU   KEYBOARD_MENU


// maximal scancode
#define USB_MAX_KEY                    KEYBOARD_RIGHT_GUI


#endif // usb_keyboard_extras_h__
