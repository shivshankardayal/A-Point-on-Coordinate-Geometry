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

// --- Chord P–R–Q ---
draw((0.5,4)--(2.5,-4));

// --- Labels ---
label("$R$", (1,2), SE);
label(Label("$Q(\alpha,\beta)$"), (2.5,-4), SE);
label(Label("$P(x_1,y_1)$"), (0.5,4), N);
