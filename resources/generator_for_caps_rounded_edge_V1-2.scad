// Parameter
screw = 3.5;             //Durchmesser der Schrauben für die die Kappe erstellt wird
height = 2;             // Höhe der Kappe
wall_thickness = 0.5;   // Wandstärke
wulst = 0.5;            // Wulst am oberen Rand
edge_radius = 0.5;      // Radius der abgerundeten Kante

facettes = 360;         // Anzahl der Facetten

radius = screw / 2 + wall_thickness;         // Außenradius des Zylinders + etwas raum

// Funktion für den hohlen Zylinder mit abgerundeter Kante
module hohler_zylinder_mit_abgerundeter_kante() {
    difference() {
        // Außenform des Zylinders
        union() {
            // Abgerundete Kante
            translate([0, 0, 0])
                cylinder(h = edge_radius, r1 = radius - edge_radius, r2 = radius, center = false, $fn = facettes);

            // Zylinderkörper
            translate([0, 0, 0 + edge_radius])
                cylinder(h = height - edge_radius, r = radius, center = false, $fn = facettes);
        }
        // Innenzylinder für die Hohlform
        union() {
            translate([0, 0, 0 + wall_thickness])
                cylinder(h = height - edge_radius - wulst, r = radius - wall_thickness, center = false, $fn = facettes);
            translate([0, 0, height - edge_radius - wulst + wall_thickness])
                cylinder(h = wulst, r = radius - wall_thickness - wulst / 2, center = false, $fn = facettes);
        }
    }
}

// Rendern des hohlen Zylinders mit abgerundeter Kante
hohler_zylinder_mit_abgerundeter_kante();
