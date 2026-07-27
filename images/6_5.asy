settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

defaultpen(linewidth(0.5pt)+fontsize(9pt));

// --- Parabola: y^2 = 4x, parametric (t^2/4, t) ---
guide g;
for(real t = -4.8; t <= 4.81; t += 0.5){
    real px = t*t/4;
    real py = t;
    g = g .. (px, py);
}
draw(g, red+linewidth(0.5pt));

// --- Labels ---
label(Label("$A(x_2,y_2)$"), (1,2), SE);
label(Label("$B(x_3,y_3)$"), (0.75,-3), SE);
label(Label("$P(x_1,y_1)$"), (1.75/2 + 1, -0.5), E);

// --- Point P ---
filldraw(circle((1.62,-0.5), 0.12), black, nullpen);

// --- Chord AB ---
draw((1.,2)--(2.25,-3));
