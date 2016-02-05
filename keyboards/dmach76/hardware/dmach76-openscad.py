#!/usr/bin/python
# -*- coding: utf-8 -*-


from dmach76 import *
from openscad import *

renderer = OpenScadRenderer(k)
renderer.render(os.path.join(TOPDIR, "output", "scad"))
