$fa = 1;
$fs = 0.05;
column_offset = 4;

difference() {
    minkowski()
        {
            translate([2.5, 2.5, 0])
                cube([78, 64 + column_offset, 1]);
            cylinder(r = 2, h = 0.5);
        }

    translate([3, 3, -1])
        cylinder(r = 1, h = 10);

    translate([3, 66 + column_offset, -1])
        cylinder(r = 1, h = 10);

    translate([80, 3, -1])
        cylinder(r = 1, h = 10);

    translate([80, 66 + column_offset, -1])
        cylinder(r = 1, h = 10);
}
