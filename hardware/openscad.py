# -*- coding: utf-8 -*-


from __future__ import print_function

import os
from common import makedirs


class OpenScadRenderer(object):
    def __init__(self, keyboard):
        self.keyboard = keyboard

    @property
    def main_file(self):
        return "%s.scad" % self.keyboard.name

    def render(self, output_dir):
        makedirs(output_dir)
        path = os.path.join(output_dir, self.main_file)
        out_file = path

        #def save_openscad(self, out_file, split_offset=None):
        #split_offset = split_offset or [0, 0]
        split_offset = [0, 0]

        l = []
        l.append("include <../../../../../hardware/openscad/keyboard-builder.scad>;")
        l.append("$fn = 50;")

        l.append("")
        l.append("")
        l.append("module switch_holes() {")

        for section in sorted(self.keyboard.rows):
            l.append("")
            l.append("    // ***** {0} *****".format(section))
            for row in self.keyboard.rows[section]:
                for key in row:
                    if key is None:
                        continue
                    pos = key.get_position(move_origin=False)
                    l.append("")
                    label = key.label
                    if label == "\\":
                        label = "Backslash"
                    l.append("    // key='%s'  pos=[%s, %s],  offset=[%s, %s],  keycap=[%s, %s]" % (label, key.point.x, key.point.y, key.offset.x, key.offset.y, key.keycap[0], key.keycap[1]))
                    line = "    translate([%s,%s]) rotate(%s) mx_switch_hole();" % (pos.x, -pos.y, -pos.orientation)
                    l.append(line)
        l.append("}")


        l.append("")
        l.append("")
        l.append("module keycaps() {")

        for section in sorted(self.keyboard.rows):
            l.append("")
            l.append("    // ***** {0} *****".format(section))
            for row in self.keyboard.rows[section]:
                for key in row:
                    if key is None:
                        continue
                    pos = key.get_position(move_origin=False)
                    l.append("")
                    l.append("    // key='%s'  pos=[%s, %s],  offset=[%s, %s],  keycap=[%s, %s]" % (key.label, key.point.x, key.point.y, key.offset.x, key.offset.y, key.keycap[0], key.keycap[1]))
                    line = "    translate([%s,%s]) rotate(%s) { keycap([%s, %s]); color(\"magenta\") text(\"%s\", size=3, align=\"right\"); }" % (pos.x, -pos.y, -pos.orientation, key.keycap[0], key.keycap[1], key.label)
                    l.append(line)
        l.append("}")

        l.append("")
        l.append("")
        l.append("module bottom_plate() {")
        l.append("    polygon(")
        l.append("        [")
        for vertex in self.keyboard.case:
            pos = vertex.get_position(move_origin=False)
            l.append("        [%s, %s]," % (pos.x, -pos.y))
        l.append("        ],")
        l.append("        [[%s]]" % ",".join([str(i) for i in range(len(self.keyboard.case))]))
        l.append("    );")
        l.append("}")

        l.append("")
        l.append("")
        l.append("module screw_holes() {")
        for hole in self.keyboard.screw_holes:
            pos = hole.get_position(move_origin=False)
            l.append("    translate([%s,%s]) circle(r=1, center=true);" % (pos.x, -pos.y))
        l.append("}")


        l.append("")
        l.append("")
        l.append("module screw_washers() {")
        for point in self.keyboard.screw_holes:
            pos = point.get_position(move_origin=False)
            l.append("    translate([%s,%s]) difference() { circle(r=4, center=true); circle(r=1, center=true);}" % (pos.x, -pos.y))
        l.append("}")


#        l.append("")
#        l.append("difference() {offset(r=5) bottom_plate(); offset(r=-4) bottom_plate(); screw_holes(); };")
#        l.append("color(\"magenta\") screw_holes();")
#        l.append("offset(r=8) bottom_plate();")
#        l.append("color(\"magenta\") switch_holes();")
#        l.append("color(\"magenta\") keycaps();")
        l.append("")

        scad = open(out_file, "w")
        scad.write("\n".join(l))

        def scad_path(file_name):
            file_name = "%s-%s.scad" % (self.keyboard.name, file_name)
            path = os.path.join(os.path.dirname(out_file), file_name)
            return path

        scad = open(scad_path("switch_plate"), "w")
        l = []
        l.append("include <%s>;" % os.path.basename(out_file))
        l.append("")
        l.append("mx_notched_holes = false;")
        l.append("difference() { offset(r=5) bottom_plate(); switch_holes(); screw_holes(); };")
        l.append("")
        scad.write("\n".join(l))

        scad = open(scad_path("spacer"), "w")
        l = []
        l.append("include <%s>;" % os.path.basename(out_file))
        l.append("")
        l.append("union() {difference() {offset(r=5) bottom_plate(); offset(r=-1) bottom_plate(); screw_holes(); }; screw_washers(); }")
        l.append("")
        scad.write("\n".join(l))

        scad = open(scad_path("bottom_plate"), "w")
        l = []
        l.append("include <%s>;" % os.path.basename(out_file))
        l.append("")
        l.append("difference() {offset(r=5) bottom_plate(); screw_holes(); };")
        l.append("")
        scad.write("\n".join(l))

        for i in range(4):
            i += 1
            scad = open(scad_path("spacer-part-%s" % i), "w")
            l = []
            l.append("include <%s>;" % os.path.basename(out_file))
            l.append("")
            l.append("quadrant_split([{0}, {1}], {2})".format(split_offset[0], split_offset[1], i))
            l.append("union() {difference() {offset(r=5) bottom_plate(); offset(r=-1) bottom_plate(); screw_holes(); }; screw_washers(); }")
            l.append("")
            scad.write("\n".join(l))

        for i in range(4):
            i += 1
            scad = open(scad_path("spacer-3d-part-%s" % i), "w")
            l = []
            l.append("include <%s>;" % os.path.basename(out_file))
            l.append("")
            l.append("linear_extrude(height=10)")
            l.append("quadrant_split([{0}, {1}], {2})".format(split_offset[0], split_offset[1], i))
            l.append("union() {difference() {offset(r=5) bottom_plate(); offset(r=-1) bottom_plate(); screw_holes(); }; screw_washers(); }")
            l.append("")
            scad.write("\n".join(l))

        scad = open(scad_path("preview-spacer-switch-holes"), "w")
        l = []
        l.append("include <%s>;" % os.path.basename(out_file))
        l.append("")
        l.append("mx_notched_holes = false;")
        l.append("switch_holes();")
        l.append("union() {difference() {offset(r=5) bottom_plate(); offset(r=-1) bottom_plate(); screw_holes(); }; screw_washers(); }")
        l.append("")
        scad.write("\n".join(l))

        scad = open(scad_path("preview-spacer-keycaps"), "w")
        l = []
        l.append("include <%s>;" % os.path.basename(out_file))
        l.append("")
        l.append("mx_notched_holes = false;")
        l.append("keycaps();")
        l.append("union() {difference() {offset(r=5) bottom_plate(); offset(r=-1) bottom_plate(); screw_holes(); }; screw_washers(); }")
        l.append("")
        scad.write("\n".join(l))
