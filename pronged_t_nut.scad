include <NopSCADlib/utils/core/core.scad>
include <NopSCADlib/vitamins/screws.scad>

function pronged_t_nut_vitamin(type) =
str(
"pronged_t_nut(", pronged_t_nut(type)[1], ",", pronged_t_nut_L(type), "): ",
"Pronged T Nut M", pronged_t_nut(type)[1], "x", pronged_t_nut_L(type));

function pronged_t_nut(type) = type[0];
function pronged_t_nut_g(type) = type[1];
function pronged_t_nut_d(type) = pronged_t_nut(type)[1];
function pronged_t_nut_D(type) = type[2];
function pronged_t_nut_D1(type) = type[3];
function pronged_t_nut_L(type) = type[4];

module pronged_t_nut(type) {
    vitamin(pronged_t_nut_vitamin(type));
    g = pronged_t_nut_g(type);
    d = pronged_t_nut_d(type);
    D = pronged_t_nut_D(type);
    D1 = pronged_t_nut_D1(type);
    L = pronged_t_nut_L(type);

    module tooth() {
        cube([(D - D1) / 3, (D - D1) / 2, g]);
    }

    color("silver")
    difference() {
        union() {
            cylinder(d = D1, h = L);
            cylinder(d = D, h = g);
            for(a = [0,90,180,270])
            rotate([0,0,a])
            translate([D1/1.5, D1 / 1.5, 0])
                rotate([90, 0, 0])
                    tooth();
        }
        for(a = [0,90,180,270])
        rotate([0,0,a])
        translate([D1/1.5, D1 / 1.5, -.1])
            resize([0,0,2])
            tooth();
        translate_z(- .5)
        cylinder(d = d, h = L + 1);
    }
}
