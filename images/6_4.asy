settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

defaultpen(linewidth(0.5pt)+fontsize(9pt));

// --- Axes ---
draw((-1,0)--(8,0), black, Arrow);
draw((0,-5)--(0,5), black, Arrow);

label("$x$", (8.2, 0));
label("$y$", (0, 5.3));

// --- Axis of symmetry: y = 0 ---
draw((-1,0)--(8,0));

// --- Parabola: y^2 = 4x, parametric (t^2/4, t) ---
guide g;
for(real t = -4.8; t <= 4.81; t += 0.5){
    real px = t*t/4;
    real py = t;
    g = g .. (px, py);
}
draw(g, red+linewidth(0.5pt));

label("$O$", (-0.45,-0.45));

// --- Equation label ---
label(Label("$y^2=4ax$", fontsize(9pt)), (7, 3.5));

// --- Tangent line y = x + 1 ---
draw((-1.5,-0.5)--(3,4), rgb("0080aa"));

label(Label("$P(x_1,y_1)$"), (1,2), SE);
label(Label("$Q(x_2,y_2)$"), (0.75,-3), SE);

// --- Segment PQ (dashed) ---
draw((1.,2)--(2.25,-3), dashed);
