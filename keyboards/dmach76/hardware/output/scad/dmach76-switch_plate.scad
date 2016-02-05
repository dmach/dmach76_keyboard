include <dmach76.scad>;

mx_notched_holes = false;
difference() { offset(r=5) bottom_plate(); switch_holes(); screw_holes(); };
