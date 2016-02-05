// -*- mode: c -*-


// All distances are in mm.


// ********** CONSTANTS **********
keycap_size             = 18;
mx_hole_size            = 13.97;
mx_notch_width          = 3.5001;
mx_notch_offset         = 4.2545;
mx_notch_depth          = 0.8128;


// ********** GLOBAL VARIABLES **********
DEBUG                   = true;
mx_notched_holes        = true;



// ********** MODULES **********


module mx_switch_hole() {
    // Cherry MX switch hole with the center at `position`.
    // Sizes come from the ErgoDox design.

    union() {
        square([mx_hole_size, mx_hole_size], center=true);
        if (mx_notched_holes) {
            translate([0, mx_notch_offset]) {
                square([mx_hole_size + 2 * mx_notch_depth, mx_notch_width], center=true);
            }
            translate([0, -mx_notch_offset]) {
                square([mx_hole_size + 2 * mx_notch_depth, mx_notch_width], center=true);
            }
        }
    }
//    _debug_rectangle(keycap_size * keycap[0] + floor(keycap[0] - 1), keycap_size * keycap[1] + floor(keycap[1] - 1));
}


module keycap(keycap) {
    width = keycap_size * keycap[0] + floor(keycap[0] - 1);
    height = keycap_size * keycap[1] + floor(keycap[1] - 1);
    square([width, height], center=true);
}


module quadrant_split(origin, quadrant_number) {
    translate(origin) {
        intersection() {
            translate(-origin) {
                children();
            }
            rotate([0, 0, quadrant_number * 90]) {
                square([1000, 1000]);
            }
        }
    }
}
