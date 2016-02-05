# -*- coding: utf-8 -*-


from __future__ import print_function

import os
import errno
import math


KEYCAP_SIZE = 18
A3 = [420, 297]
A4 = [297, 210]


def rotate(x, y, angle):
    angle_r = math.radians(angle)
    new_x = x * math.cos(angle_r) - y * math.sin(angle_r)
    new_y = y * math.cos(angle_r) + x * math.sin(angle_r)
    return new_x, new_y


def switch_center(position, keycap=None):
    keycap = keycap or [1, 1]
    result = [
        position[0] * (KEYCAP_SIZE + 1) + (keycap[0] * KEYCAP_SIZE / 2) + math.floor(keycap[0] - 1) / 2,
        position[1] * (KEYCAP_SIZE + 1) + (keycap[1] * KEYCAP_SIZE / 2) + math.floor(keycap[1] - 1) / 2,
    ]
    return result


class Point(object):
    def __init__(self, x, y, orientation=0):
        self.x = round(float(x), 3)
        self.y = round(float(y), 3)
        self.orientation = orientation % 360

    def __str__(self):
        return "Point [%8.3f, %8.3f, o=%s]" % (self.x, self.y, self.orientation)

    def __add__(self, other):
        return Point(self.x + other.x, self.y + other.y, self.orientation)

    def __iadd__(self, other):
        self.x += other.x
        self.y += other.y
        return self

    def __sub__(self, other):
        return Point(self.x - other.x, self.y - other.y, self.orientation)

    def __isub__(self, other):
        self.x -= other.x
        self.y -= other.y
        return self

    def __mul__(self, num):
        return Point(self.x * num, self.y * num, self.orientation)

    def __imul__(self, num):
        self.x *= num
        self.y *= num
        return self

    def __div__(self, num):
        return Point(self.x / num, self.y / num, self.orientation)

    def __idiv__(self, num):
        self.x /= num
        self.y /= num
        return self

    def translate(self, delta):
        return self + delta

    def translate2(self, angle, distance):
        angle_r = math.radians(angle)
        x = distance * math.cos(angle_r)
        y = distance * math.sin(angle_r)
        return self + Point(x, y)

    def rotate(self, angle, origin=None):
        if origin:
            # rotate relatively to origin
            angle_r = math.radians(angle)
            vector = self - origin
            x = vector.x * math.cos(angle_r) - vector.y * math.sin(angle_r)
            y = vector.y * math.cos(angle_r) + vector.x * math.sin(angle_r)
            p = Point(x, y, self.orientation + angle)
            return p + origin
        else:
            # rotate in place
            return Point(self.x, self.y, self.orientation + angle)

    def mirror_x(self, origin=None):
        if origin:
            distance_x = origin.x - self.x
        else:
            distance_x = -self.x
        p = Point(distance_x, self.y, -self.orientation)
        return p

    def mirror_y(self, origin=None):
        if origin:
            distance_y = origin.y - self.y
        else:
            distance_y = -self.y
        return Point(self.x, distance_y, -self.orientation)

    def distance(self, other):
        x = self - other
        return math.hypot(abs(x.x), abs(x.y))


def makedirs(path):
    try:
        os.makedirs(path)
    except OSError, ex:
        if ex.errno != errno.EEXIST:
            raise
