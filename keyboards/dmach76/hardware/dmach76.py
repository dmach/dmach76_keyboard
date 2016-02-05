#!/usr/bin/python
# -*- coding: utf-8 -*-


import os
import sys
TOPDIR = os.path.dirname(__file__)
sys.path.insert(0, os.path.join(TOPDIR, "../../../hardware"))

from keyboard import *


k = Keyboard("dmach76")


"""
Order matters!
 * keys: rows and columns
 * vertices

TODO:
 * add extra holes and washers
"""


# base position and rotation center for thumb clusters
bp_right = Point(1, -1.2)
rc_right = Point(75, -100)
bp_left = Point(-2, -1.2)
rc_left = rc_right.mirror_x()


# left thumb cluster

row = [
    Key("LSpace",       bp_left, shift=[0, 0],   rotation_center=rc_left, keycap=[1, 2]),
    Key("LCtrl",        bp_left, shift=[1, 0],   rotation_center=rc_left, keycap=[1, 1.5]),
    Key("LAlt",         bp_left, shift=[2, 0],   rotation_center=rc_left, keycap=[1, 1.5]),
]
k.add_row("thumb_left", row)

row = [
    None,
    Key("L-1",          bp_left, shift=[1, 1.5], rotation_center=rc_left),
    Key("L-2",          bp_left, shift=[2, 1.5], rotation_center=rc_left),
]
k.add_row("thumb_left", row)


# right thumb cluster

row = [
    Key("RSpace",       bp_right, shift=[ 0, 0],   rotation_center=rc_right, keycap=[1, 2]),
    Key("RCtrl",        bp_right, shift=[-1, 0],   rotation_center=rc_right, keycap=[1, 1.5]),
    Key("RAlt",         bp_right, shift=[-2, 0],   rotation_center=rc_right, keycap=[1, 1.5]),
]
k.add_row("thumb_right", row)

row = [
    None,
    Key("R-1",          bp_right, shift=[-1, 1.5], rotation_center=rc_right),
    Key("R-2",          bp_right, shift=[-2, 1.5], rotation_center=rc_right),
]
k.add_row("thumb_right", row)


# left keys

row = [
    Key("Esc",          [-7.5, 3.75], offset=[-4, 0], keycap=[1.5, 1]),
    Key("1",            [-6,   3.75], offset=[-4, 0]),
    Key("2",            [-5,   4.25], offset=[-2, 0]),
    Key("3",            [-4,   4.5]),
    Key("4",            [-3,   4.25]),
    Key("5",            [-2,   4]),
    Key("-",            [-1,   4]),
]
k.add_row("left", row)

row = [
    Key("Tab",          [-7.5, 2.75], offset=[-3, 0], keycap=[1.5, 1]),
    Key("Q",            [-6,   2.75], offset=[-3, 0]),
    Key("W",            [-5,   3.25], offset=[-1.5, 0]),
    Key("E",            [-4,   3.5]),
    Key("R",            [-3,   3.25]),
    Key("T",            [-2,   3]),
    Key("[",            [-1,   3])
]
k.add_row("left", row)

row = [
    Key("Fn",           [-7.5, 1.75], offset=[-2, 0], keycap=[1.5, 1]),
    Key("A",            [-6,   1.75], offset=[-2, 0]),
    Key("S",            [-5,   2.25], offset=[-1, 0]),
    Key("D",            [-4,   2.5]),
    Key("F",            [-3,   2.25]),
    Key("G",            [-2,   2]),
    Key(";",            [-1,   2]),
]
k.add_row("left", row)

row = [
    Key("LShift",       [-7.5, 0.75], keycap=[1.5, 1]),
    Key("Z",            [-6,   0.75]),
    Key("X",            [-5,   1.25]),
    Key("C",            [-4,   1.5]),
    Key("V",            [-3,   1.25]),
    Key("B",            [-2,   1]),
    Key("`",            [-1,   1]),
]
k.add_row("left", row)

row = [
    Key("PgUp",         [-7, -0.25]),
    Key("PgDn",         [-6, -0.25]),
    Key("Win",          [-5,  0.25]),
    Key("Menu",         [-4,  0.5]),
    Key("Ins",          [-3,  0.25]),
    None,
]
k.add_row("left", row)


# right keys

row = [
    Key("Del",          [6, 3.75], offset=[4, 0], keycap=[1.5, 1]),
    Key("0",            [5, 3.75], offset=[4, 0]),
    Key("9",            [4, 4.25], offset=[2, 0]),
    Key("8",            [3, 4.5]),
    Key("7",            [2, 4.25]),
    Key("6",            [1, 4]),
    Key("=",            [0, 4]),
]
k.add_row("right", row)

row = [
    Key("BkSpc",        [6, 2.75], offset=[3, 0], keycap=[1.5, 1]),
    Key("P",            [5, 2.75], offset=[3, 0]),
    Key("O",            [4, 3.25], offset=[1.5, 0]),
    Key("I",            [3, 3.5]),
    Key("U",            [2, 3.25]),
    Key("Y",            [1, 3]),
    Key("]",            [0, 3]),
]
k.add_row("right", row)

row = [
    Key("Enter",        [6, 1.75], offset=[2, 0], keycap=[1.5, 1]),
    Key(".",            [5, 1.75], offset=[2, 0]),
    Key("L",            [4, 2.25], offset=[1, 0]),
    Key("K",            [3, 2.5]),
    Key("J",            [2, 2.25]),
    Key("H",            [1, 2]),
    Key("'",            [0, 2]),
]
k.add_row("right", row)

row = [
    Key("RShift",       [6, 0.75], keycap=[1.5, 1]),
    Key(",",            [5, 0.75]),
    Key("/",            [4, 1.25]),
    Key("Up",           [3, 1.5]),
    Key("M",            [2, 1.25]),
    Key("N",            [1, 1]),
    Key(r"\\",          [0, 1]),
]
k.add_row("right", row)

row = [
    Key("End",          [6, -0.25]),
    Key("Home",         [5, -0.25]),
    Key("Right",        [4, 0.25]),
    Key("Down",         [3, 0.5]),
    Key("Left",         [2, 0.25]),
    None,
]
k.add_row("right", row)



k.add_vertex("-",       [0.6,  0.75], hole=True)
k.add_vertex("5",       [0,    0.75])
k.add_vertex("4",       [0.5,  1], hole=True)
k.add_vertex("2",       [-0.5, 1], hole=True)
k.add_vertex("1",       [0,    0.75])

k.add_vertex("Esc",     [-0.5,   0.75])
k.add_vertex("Esc",     [-1,    -0.25], hole=True)
k.add_vertex("LShift",  [-1,    -0.75], hole=True)
k.add_vertex("PgUp",    [-0.25, -0.75])
k.add_vertex("PgDn",    [0.5,   -0.85])
k.add_vertex("Win",     [0,     -0.85], hole=True)
k.add_vertex("Ins",     [0.5,   -0.85])

k.add_vertex("LSpace",  [-0.75, -1.1], hole=True)
k.add_vertex("LCtrl",   [-0.5,  -0.85])
k.add_vertex("LCtrl",   [0.5,   -0.85])
k.add_vertex("LAlt",    [0.75,  -0.85], hole=True)


k.add_vertex("RAlt",    [-0.75, -0.85], hole=True)
k.add_vertex("RCtrl",   [-0.5,  -0.85])
k.add_vertex("RCtrl",   [0.5,   -0.85])
k.add_vertex("RSpace",  [0.75,  -1.1], hole=True)

k.add_vertex("Left",    [-0.5, -0.85])
k.add_vertex("Right",   [0,    -0.85], hole=True)
k.add_vertex("Home",    [-0.5, -0.85])
k.add_vertex("End",     [0.25, -0.75])
k.add_vertex("RShift",  [1,    -0.75], hole=True)
k.add_vertex("Del",     [1,    -0.25], hole=True)
k.add_vertex("Del",     [0.5,   0.75])

k.add_vertex("0",       [0,    0.75])
k.add_vertex("9",       [0.5,  1], hole=True)
k.add_vertex("7",       [-0.5, 1], hole=True)
k.add_vertex("6",       [0,    0.75])
k.add_vertex("=",       [-0.6, 0.75], hole=True)

