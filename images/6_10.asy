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

// --- Chord AB ---
draw((1,-2)--(1,2));

label("$A$", (1,2), SE);
label("$B$", (1,-2), NE);
