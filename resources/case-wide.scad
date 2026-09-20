$fa = 1;
$fs = 0.05;
column_width = 14;
column_offset = 4;
number_y = -4;
number_x = -3;

difference() {
    minkowski()
        {
            translate([2.5, 2.5, 0])
                cube([77, 63 + column_offset, 15.5]);
            cylinder(r = 2.5, h = 2.5);
        }

    translate([1.5, 1.5, 3])
        cube([79, 65 + column_offset, 25]);

    minkowski()
        {
            translate([15 + number_x, 12 + number_y, -1])
                cube([52, 42 + column_width, 5]);
            cylinder(r = 2.5, h = 5);
        }

    translate([11.5 + number_x, 10 + number_y, -1])
        cylinder(r = 1.25, h = 7);
    translate([11.5 + number_x, 56 + number_y + column_width, -1])
        cylinder(r = 1.25, h = 7);
    translate([70.5 + number_x, 10 + number_y, -1])
        cylinder(r = 1.25, h = 7);
    translate([70.5 + number_x, 56 + number_y + column_width, -1])
        cylinder(r = 1.25, h = 7);

    // usb
    translate([63 + number_x, 64 + column_offset, 8])
        cube([12, 9, 7]);

    // on-off
    translate([13.5, 63 + column_offset, 6.75])
        cube([11, 7, 6]);

    translate([11.5, 70 + column_offset, 9.75])
        rotate([90, 0, 0])
            cylinder(r = 1, h = 6);

    translate([26.5, 70 + column_offset, 9.75])
        rotate([90, 0, 0])
            cylinder(r = 1, h = 6);

    // led
    translate([65+number_x,-1,10.5])
        cube([8,5,3]);
}

// bottom holes
difference() {
    translate([2.5, 2.5, 14])
        cylinder(r = 2, h = 4);
    translate([2.5, 2.5, 10])
        cylinder(r = 1, h = 10);
}

difference() {
    translate([2.5, 65.5 + column_offset, 14])
        cylinder(r = 2, h = 4);
    translate([2.5, 65.5 + column_offset, 10])
        cylinder(r = 1, h = 10);
}

difference() {
    translate([79.5, 2.5, 14])
        cylinder(r = 2, h = 4);
    translate([79.5, 2.5, 10])
        cylinder(r = 1, h = 10);
}

difference() {
    translate([79.5, 65.5 + column_offset, 14])
        cylinder(r = 2, h = 4);
    translate([79.5, 65.5 + column_offset, 10])
        cylinder(r = 1, h = 10);
}
