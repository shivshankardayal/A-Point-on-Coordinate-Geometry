settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(4cm);

defaultpen(linewidth(0.5pt));

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
label(Label("$y^2=4ax$", fontsize(10pt)), (7, 3.5));

// --- Vertical chord PQ, foot L ---
draw((2,4)--(2,0));

label(Label("$P(x_1,y_1)$"), (2,4), N);
label(Label("$Q(x_2,y_2)$"), (2,2.828), SE);
label("$L$", (2,0), S);
