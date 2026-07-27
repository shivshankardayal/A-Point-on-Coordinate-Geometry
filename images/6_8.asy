settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(4cm);

defaultpen(linewidth(0.5pt));

// --- Parabola: y^2 = 4x, parametric (t^2/4, t) ---
guide g;
for(real t = -4.8; t <= 4.81; t += 0.5){
    real px = t*t/4;
    real py = t;
    g = g .. (px, py);
}
draw(g, red+linewidth(0.5pt));

// --- Equation label ---
label(Label("$y^2=4ax$", fontsize(10pt)), (7, 3.5));

// --- Line through A ---
draw((-1.5,-0.5)--(3,4), rgb("0080aa"));
label(Label("$A(x_1,y_1)$"), (1,2), SE);
label(Label("$B(x_2,y_2)$"), (1,-2), NE);

// --- Line through B ---
draw((-1.5,0.5)--(3,-4), rgb("0080aa"));
label(Label("$P(\alpha,\beta)$"), (-1,0), W);
