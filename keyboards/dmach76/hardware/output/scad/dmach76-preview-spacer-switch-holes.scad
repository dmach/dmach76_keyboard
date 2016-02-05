include <dmach76.scad>;

mx_notched_holes = false;
switch_holes();
union() {difference() {offset(r=5) bottom_plate(); offset(r=-1) bottom_plate(); screw_holes(); }; screw_washers(); }
