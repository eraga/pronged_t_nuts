include <NopSCADlib/utils/core/core.scad>
include <NopSCADlib/vitamins/nuts.scad>

//                       d,    g,    D,   D1,   L
PRONGED_T_NUT_M4 = [M4_nut,  1.1, 15.0,  5.7,  8];
PRONGED_T_NUT_M5 = [M5_nut,  1.1, 17.0,  6.3,  8];
PRONGED_T_NUT_M6x9 = [M6_nut,  1.3, 19.0,  7.5,  9];
PRONGED_T_NUT_M6x12 = [M6_nut,  1.3, 19.0,  7.5,  12];
PRONGED_T_NUT_M6x15 = [M6_nut,  1.3, 19.0,  7.5,  15];
PRONGED_T_NUT_M6x18 = [M6_nut,  1.3, 19.0,  7.5,  18];
PRONGED_T_NUT_M8x11 = [M8_nut,  1.5, 22.2,  9.0,  11];
PRONGED_T_NUT_M8x15 = [M8_nut,  1.5, 22.2,  9.0,  15];
PRONGED_T_NUT_M8x17 = [M8_nut,  1.5, 22.2,  9.0,  17];

use <pronged_t_nut.scad>

pronged_t_nut(PRONGED_T_NUT_M8x17);
