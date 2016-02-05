# -*- coding: utf-8 -*-


from __future__ import print_function

import math
import copy

from common import Point
from common import switch_center
from common import KEYCAP_SIZE
from common import A3


DEFAULT_SCREW_HOLE_R = 1
DEFAULT_WASHER_R = 4


class Keyboard(object):
    def __init__(self, name):
        self.name = name
        self.separator = 45
        self.angle = 15

        self.keys = {}

        self.rows = {
            "left": [],
            "right": [],
            "thumb_left": [],
            "thumb_right": [],
        }
        self.case = []
        self.screw_holes = []

        self.origin = Point(A3[0]/2, A3[1] * 2/3 + 10.5)

    def add_row(self, section, row):
        if section not in self.rows:
            raise ValueError("Invalid keyboard section: {0}".format(section))

        for key in row:
            if key is None:
                continue
            if key.label in self.keys:
                raise ValueError("Key '{0}' already on keyboard. Please specify a different key label.".format(key.label))

        for key in row:
            if key is None:
                continue
            key.keyboard = self
            key.section = section
            self.keys[key.label] = key

        self.rows[section].append(row)

    def add_vertex(self, key_label, offset, hole=None, washer=None):
        if isinstance(offset, list):
            offset = Point(*offset)

        key = self.keys[key_label]
        vertex = Vertex.copy_from(key)

        if vertex.shift:
            vertex.shift += offset
        else:
            vertex.point += offset

        self.case.append(vertex)
        if hole:
            h = ScrewHole.copy_from(vertex, r=hole, washer_r=washer)
            self.screw_holes.append(h)
        return vertex


class Vertex(object):
    def __init__(self, point, keycap=None, offset=None, shift=None, rotation_center=None):
        # vertex location in 1x keycap_size units
        if isinstance(point, list):
            self.point = Point(*point)
        else:
            self.point = copy.deepcopy(point)

        # vertex offset from location in mm
        if not offset:
            self.offset = Point(0, 0)
        elif isinstance(offset, list):
            self.offset = Point(*offset)
        else:
            self.offset = copy.deepcopy(offset)

        # keycap size in 1x keycap_size units
        self.keycap = keycap or [1, 1]

        if not shift:
            self.shift = None
        elif isinstance(shift, list):
            self.shift = Point(*shift)
        else:
            self.shift = copy.deepcopy(shift)

        if not rotation_center:
            self.rotation_center = None
        elif isinstance(rotation_center, list):
            self.rotation_center = Point(*rotation_center)
        else:
            self.rotation_center = copy.deepcopy(rotation_center)

    @classmethod
    def copy_from(cls, other, **kwargs):
        instance = cls(point=other.point, keycap=other.keycap[:], offset=other.offset, shift=other.shift, rotation_center=other.rotation_center, **kwargs)
        instance.keyboard = other.keyboard
        instance.section = other.section
        return instance

    @property
    def position(self):
        return self.get_position()

    def get_position(self, move_origin=True):
        if self.shift:
            x, y = switch_center([self.point.x, self.point.y], [1, 1])
        else:
            x, y = switch_center([self.point.x, self.point.y], [self.keycap[0], self.keycap[1]])
        p = Point(x, y, orientation=self.point.orientation)
        if not self.shift:
            p += self.offset
        p.y = -p.y  # reverse also orientation?

        if move_origin:
            origin = self.keyboard.origin
        else:
            origin = Point(0, 0)

        if move_origin:
            p = p + origin

        if self.shift:
            rotation_center = origin + self.rotation_center.mirror_y()

            v = p - rotation_center
            angle_r = math.atan2(v.y, v.x)
            angle = math.degrees(angle_r)

            xxx = (self.keycap[1] - 1) * (KEYCAP_SIZE + 1) / 2
            row_shift = self.shift.y * (KEYCAP_SIZE + 1)
            row_shift += xxx

            p = p.translate2(angle, row_shift)
            p.orientation += angle + 90

            w = (KEYCAP_SIZE + 1) / 2 + 1
            h = math.hypot(v.x, v.y) / 2
            a = math.degrees(math.atan2(w, h)) * 1.05
            a = a * self.shift.x

            p = p.rotate(a, rotation_center)

            # diode and wire placement
            vector = self.offset.mirror_y()
            angle_r = math.radians(p.orientation)
            x = vector.x * math.cos(angle_r) - vector.y * math.sin(angle_r)
            y = vector.y * math.cos(angle_r) + vector.x * math.sin(angle_r)
            p.x += x
            p.y += y

        if "left" in self.section:
            p.x -= self.keyboard.separator
            p = p.rotate(+self.keyboard.angle, origin)
        else:
            p.x += self.keyboard.separator
            p = p.rotate(-self.keyboard.angle, origin)

        return p


class Key(Vertex):
    def __init__(self, label, *args, **kwargs):
        super(Key, self).__init__(*args, **kwargs)
        self.label = label


class ScrewHole(Vertex):
    def __init__(self, r, washer_r, *args, **kwargs):
        super(ScrewHole, self).__init__(*args, **kwargs)
        self.r = r or DEFAULT_SCREW_HOLE_R
        self.washer_r = washer_r or DEFAULT_WASHER_R
