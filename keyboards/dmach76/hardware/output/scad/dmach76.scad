include <../../../../../hardware/openscad/keyboard-builder.scad>;
$fn = 50;


module switch_holes() {

    // ***** left *****

    // key='Esc'  pos=[-7.5, 3.75],  offset=[-4.0, 0.0],  keycap=[1.5, 1]
    translate([-151.165,123.585]) rotate(-15) mx_switch_hole();

    // key='1'  pos=[-6.0, 3.75],  offset=[-4.0, 0.0],  keycap=[1, 1]
    translate([-127.982,117.374]) rotate(-15) mx_switch_hole();

    // key='2'  pos=[-5.0, 4.25],  offset=[-2.0, 0.0],  keycap=[1, 1]
    translate([-105.239,121.115]) rotate(-15) mx_switch_hole();

    // key='3'  pos=[-4.0, 4.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-83.725,120.268]) rotate(-15) mx_switch_hole();

    // key='4'  pos=[-3.0, 4.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-66.602,110.762]) rotate(-15) mx_switch_hole();

    // key='5'  pos=[-2.0, 4.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-49.479,101.256]) rotate(-15) mx_switch_hole();

    // key='-'  pos=[-1.0, 4.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-31.126,96.339]) rotate(-15) mx_switch_hole();

    // key='Tab'  pos=[-7.5, 2.75],  offset=[-3.0, 0.0],  keycap=[1.5, 1]
    translate([-155.116,104.974]) rotate(-15) mx_switch_hole();

    // key='Q'  pos=[-6.0, 2.75],  offset=[-3.0, 0.0],  keycap=[1, 1]
    translate([-131.934,98.762]) rotate(-15) mx_switch_hole();

    // key='W'  pos=[-5.0, 3.25],  offset=[-1.5, 0.0],  keycap=[1, 1]
    translate([-109.674,102.633]) rotate(-15) mx_switch_hole();

    // key='E'  pos=[-4.0, 3.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-88.643,101.915]) rotate(-15) mx_switch_hole();

    // key='R'  pos=[-3.0, 3.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-71.52,92.409]) rotate(-15) mx_switch_hole();

    // key='T'  pos=[-2.0, 3.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-54.396,82.904]) rotate(-15) mx_switch_hole();

    // key='['  pos=[-1.0, 3.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-36.044,77.986]) rotate(-15) mx_switch_hole();

    // key='Fn'  pos=[-7.5, 1.75],  offset=[-2.0, 0.0],  keycap=[1.5, 1]
    translate([-159.068,86.363]) rotate(-15) mx_switch_hole();

    // key='A'  pos=[-6.0, 1.75],  offset=[-2.0, 0.0],  keycap=[1, 1]
    translate([-135.886,80.151]) rotate(-15) mx_switch_hole();

    // key='S'  pos=[-5.0, 2.25],  offset=[-1.0, 0.0],  keycap=[1, 1]
    translate([-114.108,84.151]) rotate(-15) mx_switch_hole();

    // key='D'  pos=[-4.0, 2.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-93.56,83.563]) rotate(-15) mx_switch_hole();

    // key='F'  pos=[-3.0, 2.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-76.437,74.057]) rotate(-15) mx_switch_hole();

    // key='G'  pos=[-2.0, 2.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-59.314,64.551]) rotate(-15) mx_switch_hole();

    // key=';'  pos=[-1.0, 2.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-40.961,59.634]) rotate(-15) mx_switch_hole();

    // key='LShift'  pos=[-7.5, 0.75],  offset=[0.0, 0.0],  keycap=[1.5, 1]
    translate([-162.054,67.492]) rotate(-15) mx_switch_hole();

    // key='Z'  pos=[-6.0, 0.75],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-138.871,61.281]) rotate(-15) mx_switch_hole();

    // key='X'  pos=[-5.0, 1.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-118.06,65.539]) rotate(-15) mx_switch_hole();

    // key='C'  pos=[-4.0, 1.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-98.478,65.21]) rotate(-15) mx_switch_hole();

    // key='V'  pos=[-3.0, 1.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-81.355,55.704]) rotate(-15) mx_switch_hole();

    // key='B'  pos=[-2.0, 1.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-64.232,46.199]) rotate(-15) mx_switch_hole();

    // key='`'  pos=[-1.0, 1.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-45.879,41.281]) rotate(-15) mx_switch_hole();

    // key='PgUp'  pos=[-7.0, -0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-162.141,47.846]) rotate(-15) mx_switch_hole();

    // key='PgDn'  pos=[-6.0, -0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-143.789,42.928]) rotate(-15) mx_switch_hole();

    // key='Win'  pos=[-5.0, 0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-122.978,47.187]) rotate(-15) mx_switch_hole();

    // key='Menu'  pos=[-4.0, 0.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-103.396,46.857]) rotate(-15) mx_switch_hole();

    // key='Ins'  pos=[-3.0, 0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-86.272,37.352]) rotate(-15) mx_switch_hole();

    // ***** right *****

    // key='Del'  pos=[6.0, 3.75],  offset=[4.0, 0.0],  keycap=[1.5, 1]
    translate([149.716,123.197]) rotate(-345) mx_switch_hole();

    // key='0'  pos=[5.0, 3.75],  offset=[4.0, 0.0],  keycap=[1, 1]
    translate([127.016,117.115]) rotate(-345) mx_switch_hole();

    // key='9'  pos=[4.0, 4.25],  offset=[2.0, 0.0],  keycap=[1, 1]
    translate([104.273,120.856]) rotate(-345) mx_switch_hole();

    // key='8'  pos=[3.0, 4.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([82.759,120.009]) rotate(-345) mx_switch_hole();

    // key='7'  pos=[2.0, 4.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([65.636,110.503]) rotate(-345) mx_switch_hole();

    // key='6'  pos=[1.0, 4.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([48.513,100.997]) rotate(-345) mx_switch_hole();

    // key='='  pos=[0.0, 4.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([30.16,96.08]) rotate(-345) mx_switch_hole();

    // key='BkSpc'  pos=[6.0, 2.75],  offset=[3.0, 0.0],  keycap=[1.5, 1]
    translate([153.667,104.586]) rotate(-345) mx_switch_hole();

    // key='P'  pos=[5.0, 2.75],  offset=[3.0, 0.0],  keycap=[1, 1]
    translate([130.968,98.503]) rotate(-345) mx_switch_hole();

    // key='O'  pos=[4.0, 3.25],  offset=[1.5, 0.0],  keycap=[1, 1]
    translate([108.708,102.374]) rotate(-345) mx_switch_hole();

    // key='I'  pos=[3.0, 3.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([87.677,101.656]) rotate(-345) mx_switch_hole();

    // key='U'  pos=[2.0, 3.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([70.554,92.151]) rotate(-345) mx_switch_hole();

    // key='Y'  pos=[1.0, 3.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([53.431,82.645]) rotate(-345) mx_switch_hole();

    // key=']'  pos=[0.0, 3.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([35.078,77.727]) rotate(-345) mx_switch_hole();

    // key='Enter'  pos=[6.0, 1.75],  offset=[2.0, 0.0],  keycap=[1.5, 1]
    translate([157.619,85.974]) rotate(-345) mx_switch_hole();

    // key='.'  pos=[5.0, 1.75],  offset=[2.0, 0.0],  keycap=[1, 1]
    translate([134.92,79.892]) rotate(-345) mx_switch_hole();

    // key='L'  pos=[4.0, 2.25],  offset=[1.0, 0.0],  keycap=[1, 1]
    translate([113.142,83.892]) rotate(-345) mx_switch_hole();

    // key='K'  pos=[3.0, 2.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([92.594,83.304]) rotate(-345) mx_switch_hole();

    // key='J'  pos=[2.0, 2.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([75.471,73.798]) rotate(-345) mx_switch_hole();

    // key='H'  pos=[1.0, 2.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([58.348,64.292]) rotate(-345) mx_switch_hole();

    // key='''  pos=[0.0, 2.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([39.995,59.375]) rotate(-345) mx_switch_hole();

    // key='RShift'  pos=[6.0, 0.75],  offset=[0.0, 0.0],  keycap=[1.5, 1]
    translate([160.605,67.104]) rotate(-345) mx_switch_hole();

    // key=','  pos=[5.0, 0.75],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([137.905,61.022]) rotate(-345) mx_switch_hole();

    // key='/'  pos=[4.0, 1.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([117.094,65.281]) rotate(-345) mx_switch_hole();

    // key='Up'  pos=[3.0, 1.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([97.512,64.951]) rotate(-345) mx_switch_hole();

    // key='M'  pos=[2.0, 1.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([80.389,55.445]) rotate(-345) mx_switch_hole();

    // key='N'  pos=[1.0, 1.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([63.266,45.94]) rotate(-345) mx_switch_hole();

    // key='\\'  pos=[0.0, 1.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([44.913,41.022]) rotate(-345) mx_switch_hole();

    // key='End'  pos=[6.0, -0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([161.176,47.587]) rotate(-345) mx_switch_hole();

    // key='Home'  pos=[5.0, -0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([142.823,42.669]) rotate(-345) mx_switch_hole();

    // key='Right'  pos=[4.0, 0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([122.012,46.928]) rotate(-345) mx_switch_hole();

    // key='Down'  pos=[3.0, 0.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([102.43,46.599]) rotate(-345) mx_switch_hole();

    // key='Left'  pos=[2.0, 0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([85.306,37.093]) rotate(-345) mx_switch_hole();

    // ***** thumb_left *****

    // key='LSpace'  pos=[-2.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 2]
    translate([-68.903,12.396]) rotate(-43.0862848355) mx_switch_hole();

    // key='LCtrl'  pos=[-2.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1.5]
    translate([-57.628,-7.109]) rotate(-55.2331128102) mx_switch_hole();

    // key='LAlt'  pos=[-2.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1.5]
    translate([-47.218,-26.127]) rotate(-67.379940785) mx_switch_hole();

    // key='L-1'  pos=[-2.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-38.118,6.434]) rotate(-55.2331128102) mx_switch_hole();

    // key='L-2'  pos=[-2.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-25.295,-16.993]) rotate(-67.379940785) mx_switch_hole();

    // ***** thumb_right *****

    // key='RSpace'  pos=[1.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 2]
    translate([67.878,12.082]) rotate(-316.398855206) mx_switch_hole();

    // key='RCtrl'  pos=[1.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1.5]
    translate([56.772,-7.516]) rotate(-304.309192438) mx_switch_hole();

    // key='RAlt'  pos=[1.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1.5]
    translate([46.506,-26.611]) rotate(-292.21952967) mx_switch_hole();

    // key='R-1'  pos=[1.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([37.154,5.87]) rotate(-304.309192438) mx_switch_hole();

    // key='R-2'  pos=[1.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([24.519,-17.63]) rotate(-292.21952967) mx_switch_hole();
}


module keycaps() {

    // ***** left *****

    // key='Esc'  pos=[-7.5, 3.75],  offset=[-4.0, 0.0],  keycap=[1.5, 1]
    translate([-151.165,123.585]) rotate(-15) { keycap([1.5, 1]); color("magenta") text("Esc", size=3, align="right"); }

    // key='1'  pos=[-6.0, 3.75],  offset=[-4.0, 0.0],  keycap=[1, 1]
    translate([-127.982,117.374]) rotate(-15) { keycap([1, 1]); color("magenta") text("1", size=3, align="right"); }

    // key='2'  pos=[-5.0, 4.25],  offset=[-2.0, 0.0],  keycap=[1, 1]
    translate([-105.239,121.115]) rotate(-15) { keycap([1, 1]); color("magenta") text("2", size=3, align="right"); }

    // key='3'  pos=[-4.0, 4.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-83.725,120.268]) rotate(-15) { keycap([1, 1]); color("magenta") text("3", size=3, align="right"); }

    // key='4'  pos=[-3.0, 4.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-66.602,110.762]) rotate(-15) { keycap([1, 1]); color("magenta") text("4", size=3, align="right"); }

    // key='5'  pos=[-2.0, 4.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-49.479,101.256]) rotate(-15) { keycap([1, 1]); color("magenta") text("5", size=3, align="right"); }

    // key='-'  pos=[-1.0, 4.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-31.126,96.339]) rotate(-15) { keycap([1, 1]); color("magenta") text("-", size=3, align="right"); }

    // key='Tab'  pos=[-7.5, 2.75],  offset=[-3.0, 0.0],  keycap=[1.5, 1]
    translate([-155.116,104.974]) rotate(-15) { keycap([1.5, 1]); color("magenta") text("Tab", size=3, align="right"); }

    // key='Q'  pos=[-6.0, 2.75],  offset=[-3.0, 0.0],  keycap=[1, 1]
    translate([-131.934,98.762]) rotate(-15) { keycap([1, 1]); color("magenta") text("Q", size=3, align="right"); }

    // key='W'  pos=[-5.0, 3.25],  offset=[-1.5, 0.0],  keycap=[1, 1]
    translate([-109.674,102.633]) rotate(-15) { keycap([1, 1]); color("magenta") text("W", size=3, align="right"); }

    // key='E'  pos=[-4.0, 3.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-88.643,101.915]) rotate(-15) { keycap([1, 1]); color("magenta") text("E", size=3, align="right"); }

    // key='R'  pos=[-3.0, 3.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-71.52,92.409]) rotate(-15) { keycap([1, 1]); color("magenta") text("R", size=3, align="right"); }

    // key='T'  pos=[-2.0, 3.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-54.396,82.904]) rotate(-15) { keycap([1, 1]); color("magenta") text("T", size=3, align="right"); }

    // key='['  pos=[-1.0, 3.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-36.044,77.986]) rotate(-15) { keycap([1, 1]); color("magenta") text("[", size=3, align="right"); }

    // key='Fn'  pos=[-7.5, 1.75],  offset=[-2.0, 0.0],  keycap=[1.5, 1]
    translate([-159.068,86.363]) rotate(-15) { keycap([1.5, 1]); color("magenta") text("Fn", size=3, align="right"); }

    // key='A'  pos=[-6.0, 1.75],  offset=[-2.0, 0.0],  keycap=[1, 1]
    translate([-135.886,80.151]) rotate(-15) { keycap([1, 1]); color("magenta") text("A", size=3, align="right"); }

    // key='S'  pos=[-5.0, 2.25],  offset=[-1.0, 0.0],  keycap=[1, 1]
    translate([-114.108,84.151]) rotate(-15) { keycap([1, 1]); color("magenta") text("S", size=3, align="right"); }

    // key='D'  pos=[-4.0, 2.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-93.56,83.563]) rotate(-15) { keycap([1, 1]); color("magenta") text("D", size=3, align="right"); }

    // key='F'  pos=[-3.0, 2.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-76.437,74.057]) rotate(-15) { keycap([1, 1]); color("magenta") text("F", size=3, align="right"); }

    // key='G'  pos=[-2.0, 2.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-59.314,64.551]) rotate(-15) { keycap([1, 1]); color("magenta") text("G", size=3, align="right"); }

    // key=';'  pos=[-1.0, 2.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-40.961,59.634]) rotate(-15) { keycap([1, 1]); color("magenta") text(";", size=3, align="right"); }

    // key='LShift'  pos=[-7.5, 0.75],  offset=[0.0, 0.0],  keycap=[1.5, 1]
    translate([-162.054,67.492]) rotate(-15) { keycap([1.5, 1]); color("magenta") text("LShift", size=3, align="right"); }

    // key='Z'  pos=[-6.0, 0.75],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-138.871,61.281]) rotate(-15) { keycap([1, 1]); color("magenta") text("Z", size=3, align="right"); }

    // key='X'  pos=[-5.0, 1.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-118.06,65.539]) rotate(-15) { keycap([1, 1]); color("magenta") text("X", size=3, align="right"); }

    // key='C'  pos=[-4.0, 1.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-98.478,65.21]) rotate(-15) { keycap([1, 1]); color("magenta") text("C", size=3, align="right"); }

    // key='V'  pos=[-3.0, 1.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-81.355,55.704]) rotate(-15) { keycap([1, 1]); color("magenta") text("V", size=3, align="right"); }

    // key='B'  pos=[-2.0, 1.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-64.232,46.199]) rotate(-15) { keycap([1, 1]); color("magenta") text("B", size=3, align="right"); }

    // key='`'  pos=[-1.0, 1.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-45.879,41.281]) rotate(-15) { keycap([1, 1]); color("magenta") text("`", size=3, align="right"); }

    // key='PgUp'  pos=[-7.0, -0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-162.141,47.846]) rotate(-15) { keycap([1, 1]); color("magenta") text("PgUp", size=3, align="right"); }

    // key='PgDn'  pos=[-6.0, -0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-143.789,42.928]) rotate(-15) { keycap([1, 1]); color("magenta") text("PgDn", size=3, align="right"); }

    // key='Win'  pos=[-5.0, 0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-122.978,47.187]) rotate(-15) { keycap([1, 1]); color("magenta") text("Win", size=3, align="right"); }

    // key='Menu'  pos=[-4.0, 0.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-103.396,46.857]) rotate(-15) { keycap([1, 1]); color("magenta") text("Menu", size=3, align="right"); }

    // key='Ins'  pos=[-3.0, 0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-86.272,37.352]) rotate(-15) { keycap([1, 1]); color("magenta") text("Ins", size=3, align="right"); }

    // ***** right *****

    // key='Del'  pos=[6.0, 3.75],  offset=[4.0, 0.0],  keycap=[1.5, 1]
    translate([149.716,123.197]) rotate(-345) { keycap([1.5, 1]); color("magenta") text("Del", size=3, align="right"); }

    // key='0'  pos=[5.0, 3.75],  offset=[4.0, 0.0],  keycap=[1, 1]
    translate([127.016,117.115]) rotate(-345) { keycap([1, 1]); color("magenta") text("0", size=3, align="right"); }

    // key='9'  pos=[4.0, 4.25],  offset=[2.0, 0.0],  keycap=[1, 1]
    translate([104.273,120.856]) rotate(-345) { keycap([1, 1]); color("magenta") text("9", size=3, align="right"); }

    // key='8'  pos=[3.0, 4.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([82.759,120.009]) rotate(-345) { keycap([1, 1]); color("magenta") text("8", size=3, align="right"); }

    // key='7'  pos=[2.0, 4.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([65.636,110.503]) rotate(-345) { keycap([1, 1]); color("magenta") text("7", size=3, align="right"); }

    // key='6'  pos=[1.0, 4.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([48.513,100.997]) rotate(-345) { keycap([1, 1]); color("magenta") text("6", size=3, align="right"); }

    // key='='  pos=[0.0, 4.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([30.16,96.08]) rotate(-345) { keycap([1, 1]); color("magenta") text("=", size=3, align="right"); }

    // key='BkSpc'  pos=[6.0, 2.75],  offset=[3.0, 0.0],  keycap=[1.5, 1]
    translate([153.667,104.586]) rotate(-345) { keycap([1.5, 1]); color("magenta") text("BkSpc", size=3, align="right"); }

    // key='P'  pos=[5.0, 2.75],  offset=[3.0, 0.0],  keycap=[1, 1]
    translate([130.968,98.503]) rotate(-345) { keycap([1, 1]); color("magenta") text("P", size=3, align="right"); }

    // key='O'  pos=[4.0, 3.25],  offset=[1.5, 0.0],  keycap=[1, 1]
    translate([108.708,102.374]) rotate(-345) { keycap([1, 1]); color("magenta") text("O", size=3, align="right"); }

    // key='I'  pos=[3.0, 3.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([87.677,101.656]) rotate(-345) { keycap([1, 1]); color("magenta") text("I", size=3, align="right"); }

    // key='U'  pos=[2.0, 3.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([70.554,92.151]) rotate(-345) { keycap([1, 1]); color("magenta") text("U", size=3, align="right"); }

    // key='Y'  pos=[1.0, 3.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([53.431,82.645]) rotate(-345) { keycap([1, 1]); color("magenta") text("Y", size=3, align="right"); }

    // key=']'  pos=[0.0, 3.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([35.078,77.727]) rotate(-345) { keycap([1, 1]); color("magenta") text("]", size=3, align="right"); }

    // key='Enter'  pos=[6.0, 1.75],  offset=[2.0, 0.0],  keycap=[1.5, 1]
    translate([157.619,85.974]) rotate(-345) { keycap([1.5, 1]); color("magenta") text("Enter", size=3, align="right"); }

    // key='.'  pos=[5.0, 1.75],  offset=[2.0, 0.0],  keycap=[1, 1]
    translate([134.92,79.892]) rotate(-345) { keycap([1, 1]); color("magenta") text(".", size=3, align="right"); }

    // key='L'  pos=[4.0, 2.25],  offset=[1.0, 0.0],  keycap=[1, 1]
    translate([113.142,83.892]) rotate(-345) { keycap([1, 1]); color("magenta") text("L", size=3, align="right"); }

    // key='K'  pos=[3.0, 2.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([92.594,83.304]) rotate(-345) { keycap([1, 1]); color("magenta") text("K", size=3, align="right"); }

    // key='J'  pos=[2.0, 2.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([75.471,73.798]) rotate(-345) { keycap([1, 1]); color("magenta") text("J", size=3, align="right"); }

    // key='H'  pos=[1.0, 2.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([58.348,64.292]) rotate(-345) { keycap([1, 1]); color("magenta") text("H", size=3, align="right"); }

    // key='''  pos=[0.0, 2.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([39.995,59.375]) rotate(-345) { keycap([1, 1]); color("magenta") text("'", size=3, align="right"); }

    // key='RShift'  pos=[6.0, 0.75],  offset=[0.0, 0.0],  keycap=[1.5, 1]
    translate([160.605,67.104]) rotate(-345) { keycap([1.5, 1]); color("magenta") text("RShift", size=3, align="right"); }

    // key=','  pos=[5.0, 0.75],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([137.905,61.022]) rotate(-345) { keycap([1, 1]); color("magenta") text(",", size=3, align="right"); }

    // key='/'  pos=[4.0, 1.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([117.094,65.281]) rotate(-345) { keycap([1, 1]); color("magenta") text("/", size=3, align="right"); }

    // key='Up'  pos=[3.0, 1.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([97.512,64.951]) rotate(-345) { keycap([1, 1]); color("magenta") text("Up", size=3, align="right"); }

    // key='M'  pos=[2.0, 1.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([80.389,55.445]) rotate(-345) { keycap([1, 1]); color("magenta") text("M", size=3, align="right"); }

    // key='N'  pos=[1.0, 1.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([63.266,45.94]) rotate(-345) { keycap([1, 1]); color("magenta") text("N", size=3, align="right"); }

    // key='\\'  pos=[0.0, 1.0],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([44.913,41.022]) rotate(-345) { keycap([1, 1]); color("magenta") text("\\", size=3, align="right"); }

    // key='End'  pos=[6.0, -0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([161.176,47.587]) rotate(-345) { keycap([1, 1]); color("magenta") text("End", size=3, align="right"); }

    // key='Home'  pos=[5.0, -0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([142.823,42.669]) rotate(-345) { keycap([1, 1]); color("magenta") text("Home", size=3, align="right"); }

    // key='Right'  pos=[4.0, 0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([122.012,46.928]) rotate(-345) { keycap([1, 1]); color("magenta") text("Right", size=3, align="right"); }

    // key='Down'  pos=[3.0, 0.5],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([102.43,46.599]) rotate(-345) { keycap([1, 1]); color("magenta") text("Down", size=3, align="right"); }

    // key='Left'  pos=[2.0, 0.25],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([85.306,37.093]) rotate(-345) { keycap([1, 1]); color("magenta") text("Left", size=3, align="right"); }

    // ***** thumb_left *****

    // key='LSpace'  pos=[-2.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 2]
    translate([-68.903,12.396]) rotate(-43.0862848355) { keycap([1, 2]); color("magenta") text("LSpace", size=3, align="right"); }

    // key='LCtrl'  pos=[-2.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1.5]
    translate([-57.628,-7.109]) rotate(-55.2331128102) { keycap([1, 1.5]); color("magenta") text("LCtrl", size=3, align="right"); }

    // key='LAlt'  pos=[-2.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1.5]
    translate([-47.218,-26.127]) rotate(-67.379940785) { keycap([1, 1.5]); color("magenta") text("LAlt", size=3, align="right"); }

    // key='L-1'  pos=[-2.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-38.118,6.434]) rotate(-55.2331128102) { keycap([1, 1]); color("magenta") text("L-1", size=3, align="right"); }

    // key='L-2'  pos=[-2.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([-25.295,-16.993]) rotate(-67.379940785) { keycap([1, 1]); color("magenta") text("L-2", size=3, align="right"); }

    // ***** thumb_right *****

    // key='RSpace'  pos=[1.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 2]
    translate([67.878,12.082]) rotate(-316.398855206) { keycap([1, 2]); color("magenta") text("RSpace", size=3, align="right"); }

    // key='RCtrl'  pos=[1.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1.5]
    translate([56.772,-7.516]) rotate(-304.309192438) { keycap([1, 1.5]); color("magenta") text("RCtrl", size=3, align="right"); }

    // key='RAlt'  pos=[1.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1.5]
    translate([46.506,-26.611]) rotate(-292.21952967) { keycap([1, 1.5]); color("magenta") text("RAlt", size=3, align="right"); }

    // key='R-1'  pos=[1.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([37.154,5.87]) rotate(-304.309192438) { keycap([1, 1]); color("magenta") text("R-1", size=3, align="right"); }

    // key='R-2'  pos=[1.0, -1.2],  offset=[0.0, 0.0],  keycap=[1, 1]
    translate([24.519,-17.63]) rotate(-292.21952967) { keycap([1, 1]); color("magenta") text("R-2", size=3, align="right"); }
}


module bottom_plate() {
    polygon(
        [
        [-16.427, 107.153],
        [-45.791, 115.021],
        [-52.508, 126.656],
        [-109.498, 141.926],
        [-124.294, 131.138],
        [-156.653, 139.809],
        [-170.747, 123.915],
        [-184.094, 58.645],
        [-170.418, 35.311],
        [-138.793, 24.87],
        [-127.157, 31.587],
        [-81.276, 19.293],
        [-93.842, 5.622],
        [-76.499, -9.094],
        [-66.086, -24.097],
        [-57.875, -45.373],
        [57.289, -45.789],
        [65.359, -24.441],
        [75.661, -9.343],
        [92.881, 5.542],
        [80.31, 19.034],
        [126.192, 31.328],
        [137.827, 24.611],
        [169.452, 35.052],
        [182.645, 58.257],
        [169.298, 123.527],
        [155.204, 139.42],
        [123.328, 130.879],
        [108.532, 141.667],
        [51.542, 126.397],
        [44.825, 114.762],
        [15.461, 106.894],
        ],
        [[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]]
    );
}


module screw_holes() {
    translate([-16.427,107.153]) circle(r=1, center=true);
    translate([-52.508,126.656]) circle(r=1, center=true);
    translate([-109.498,141.926]) circle(r=1, center=true);
    translate([-170.747,123.915]) circle(r=1, center=true);
    translate([-184.094,58.645]) circle(r=1, center=true);
    translate([-127.157,31.587]) circle(r=1, center=true);
    translate([-93.842,5.622]) circle(r=1, center=true);
    translate([-57.875,-45.373]) circle(r=1, center=true);
    translate([57.289,-45.789]) circle(r=1, center=true);
    translate([92.881,5.542]) circle(r=1, center=true);
    translate([126.192,31.328]) circle(r=1, center=true);
    translate([182.645,58.257]) circle(r=1, center=true);
    translate([169.298,123.527]) circle(r=1, center=true);
    translate([108.532,141.667]) circle(r=1, center=true);
    translate([51.542,126.397]) circle(r=1, center=true);
    translate([15.461,106.894]) circle(r=1, center=true);
}


module screw_washers() {
    translate([-16.427,107.153]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([-52.508,126.656]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([-109.498,141.926]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([-170.747,123.915]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([-184.094,58.645]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([-127.157,31.587]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([-93.842,5.622]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([-57.875,-45.373]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([57.289,-45.789]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([92.881,5.542]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([126.192,31.328]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([182.645,58.257]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([169.298,123.527]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([108.532,141.667]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([51.542,126.397]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
    translate([15.461,106.894]) difference() { circle(r=4, center=true); circle(r=1, center=true);}
}
