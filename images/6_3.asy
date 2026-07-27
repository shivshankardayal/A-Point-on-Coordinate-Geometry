settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

// Coordinate helpers — origin at canvas (5,5), same offset trick as cetz's tx/ty
real tx(real x){ return x; }  // offset cancels out since we only use relative geometry
real ty(real y){ return y; }

// --- Axes ---
draw((tx(-4),ty(0))--(tx(8),ty(0)), black+linewidth(0.6pt), Arrow(TeXHead));
draw((tx(0),ty(-5))--(tx(0),ty(5)), black+linewidth(0.6pt), Arrow(TeXHead));

label("$x$", (tx(8.2), ty(0)));
label("$y$", (tx(0), ty(5.3)));

// --- Directrix: x = -a = -2 ---
draw((tx(-2),ty(-5))--(tx(-2),ty(5)), blue+linewidth(.5pt)+dashed);
label(Label("$x=-a$", fontsize(8pt)), (tx(-2), ty(5.3)), blue);

// --- Axis of symmetry: y = 0 ---
draw((tx(-1),ty(0))--(tx(8),ty(0)), gray+linewidth(0.5pt)+linetype("2 2"));

// --- Parabola: y^2 = 8x, parametric (t^2/8, t) ---
guide g;
for(real t = -4.8; t <= 4.81; t += 0.15){
    real px = t*t/8;
    real py = t;
    g = g .. (tx(px), ty(py));
}
draw(g, red+linewidth(0.5pt));

// --- Focus point F(2, 0) ---
filldraw(circle((tx(2),ty(0)), 0.12), orange, nullpen);
label(Label("$S(a,0)$", fontsize(8pt)), (tx(2.2), ty(0.3)), orange);

// --- Vertex V(0, 0) ---
filldraw(circle((tx(0),ty(0)), 0.12), rgb(0,0.6,0), nullpen);  // green
label(Label("$O$", fontsize(8pt)), (tx(0.15), ty(-0.45)), rgb(0,0.6,0));

label("$Q$", (tx(-2), ty(0)), SW);
label("$M$", (tx(-2), ty(4)), SW);

// --- Equation label ---
label(Label("$y^2=4ax$", fontsize(10pt)), (tx(7), ty(3.5)));

// --- Point P on the parabola, at t = sqrt(8) ---
real ysq8 = sqrt(8.0);
draw((tx(1),ty(ysq8))--(tx(2),ty(0)));
draw((tx(1),ty(ysq8))--(tx(-2),ty(ysq8)));
label(Label("$P(x,y)$", fontsize(10pt)), (tx(1), ty(ysq8)), SE);
