// cover_page.asy
import fontsize;

settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
import graph;
size(17.6cm, 25cm); // B5 page

defaultpen(fontsize(12pt));

// =====================
// Background grid ONLY
// =====================
pen gridpen = rgb(0.92,0.92,0.92)+0.3bp;

for (int i = -12; i <= 12; ++i) {
    draw((i,-18)--(i,18), gridpen);
    draw((-9,i)--(9,i), gridpen);
}

// =====================
// Curves (no axes, no black frame)
// =====================

// Parabola (shifted for visual balance)
pen parapen = red;
draw(graph(new real(real x) {return x*x/6 - 2.5;}, -8, 8), parapen);

// Circle (shifted down)
pen circlepen = blue;
draw(shift((0,-2.5))*Circle((0,0),5), circlepen);

// Line (soft placement)
pen linepen = green;
draw(graph(new real(real x) {return -0.6*x + 1.5;}, -9, 9), linepen);

// =====================
// Title block (kept, no black outline)
// =====================
fill((-9,12)--(9,12)--(9,19)--(-9,19)--cycle, lightgray+opacity(0.20));

label(scale(1.8)*"A Point on Coordinate Geometry", (0,16), black);
label("A Problem Oriented Approach", (0,15.2), darkgray);
label(scale(1.2)*"Shiv Shankar Dayal", (0,13.6), darkgray);

// =====================
// Decorative points (soft)
// =====================
pen ptpen = purple+0.5bp;

for (real x = -7; x <= 7; x += 2) {
    dot((x, x*x/12 - 2.5), ptpen);
    dot((x, -0.6*x + 1.5), ptpen);
}
