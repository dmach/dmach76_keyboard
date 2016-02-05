#!/usr/bin/python
# -*- coding: utf-8 -*-


import os
import sys
import unittest
import copy
import math


sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))


from hardware.common import Point


class TestPoint(unittest.TestCase):

    def test_add(self):
        one = Point(2, 3, orientation=15)
        two = Point(4, 6, orientation=22)

        result = one + two
        self.assertEqual(result.x, 6)
        self.assertEqual(result.y, 9)
        self.assertEqual(result.orientation, 15)

    def test_iadd(self):
        one = Point(2, 3, orientation=15)
        two = Point(4, 6, orientation=22)

        one += two
        result = one
        self.assertEqual(result.x, 6)
        self.assertEqual(result.y, 9)
        self.assertEqual(result.orientation, 15)

    def test_sub(self):
        one = Point(2, 3, orientation=15)
        two = Point(4, 6, orientation=22)

        result = one - two
        self.assertEqual(result.x, -2)
        self.assertEqual(result.y, -3)
        self.assertEqual(result.orientation, 15)

    def test_isub(self):
        one = Point(2, 3, orientation=15)
        two = Point(4, 6, orientation=22)

        one -= two
        result = one
        self.assertEqual(result.x, -2)
        self.assertEqual(result.y, -3)
        self.assertEqual(result.orientation, 15)

    def test_mul(self):
        one = Point(2, 3, orientation=15)
        num = 10

        result = one * num
        self.assertEqual(result.x, 20)
        self.assertEqual(result.y, 30)
        self.assertEqual(result.orientation, 15)

    def test_imul(self):
        one = Point(2, 3, orientation=15)
        num = 10

        one *= num
        result = one
        self.assertEqual(result.x, 20)
        self.assertEqual(result.y, 30)
        self.assertEqual(result.orientation, 15)

    def test_div(self):
        one = Point(2, 3, orientation=15)
        num = 2

        result = one / num
        self.assertEqual(result.x, 1)
        self.assertEqual(result.y, 1.5)
        self.assertEqual(result.orientation, 15)

    def test_idiv(self):
        one = Point(2, 3, orientation=15)
        num = 2

        one /= num
        result = one
        self.assertEqual(result.x, 1)
        self.assertEqual(result.y, 1.5)
        self.assertEqual(result.orientation, 15)

    def test_rotate(self):
        one = Point(2, 3, orientation=15)

        result = one.rotate(90, Point(0, 0))
        self.assertEqual(result.x, -3)
        self.assertEqual(result.y, 2)
        self.assertEqual(result.orientation, 105)

    def test_translate2(self):
        one = Point(2, 3, orientation=15)

        result = one.translate2(45, math.sqrt(2))
        self.assertEqual(result.x, 3)
        self.assertEqual(result.y, 4)
        self.assertEqual(result.orientation, 15)

    def test_mirror_x(self):
        # towards (0, 0)
        one = Point(2, 3, orientation=15)
        result = one.mirror_x()

        self.assertEqual(result.x, -2)
        self.assertEqual(result.y, 3)
        self.assertEqual(result.orientation, 345)

        # towards origin
        one = Point(2, 3, orientation=15)
        two = Point(-2, 10)

        result = one.mirror_x(two)
        self.assertEqual(result.x, -4)
        self.assertEqual(result.y, 3)
        self.assertEqual(result.orientation, 345)

    def test_mirror_y(self):
        # towards (0, 0)
        one = Point(2, 3, orientation=15)
        result = one.mirror_y()

        self.assertEqual(result.x, 2)
        self.assertEqual(result.y, -3)
        self.assertEqual(result.orientation, 345)

        # towards origin
        one = Point(2, 3, orientation=15)
        two = Point(-2, 10)

        result = one.mirror_y(two)
        self.assertEqual(result.x, 2)
        self.assertEqual(result.y, 7)
        self.assertEqual(result.orientation, 345)

    def test_deepcopy(self):
        one = Point(2, 3, orientation=15)
        two = copy.deepcopy(one)

        self.assertNotEqual(one, two)
        self.assertEqual(one.x, two.x)
        self.assertEqual(two.y, two.y)
        self.assertEqual(one.orientation, two.orientation)


if __name__ == "__main__":
    unittest.main()
