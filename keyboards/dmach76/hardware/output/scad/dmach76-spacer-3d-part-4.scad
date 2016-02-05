include <dmach76.scad>;

linear_extrude(height=10)
quadrant_split([0, 0], 4)
union() {difference() {offset(r=5) bottom_plate(); offset(r=-1) bottom_plate(); screw_holes(); }; screw_washers(); }
