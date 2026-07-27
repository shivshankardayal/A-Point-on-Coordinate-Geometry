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

// directrix
draw((-1,-5)--(-1,5));

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

// --- Equation label ---
label(Label("$y^2=4ax$", fontsize(10pt)), (7, 3.5));

// --- Tangent line ---
draw((-1,0)--(3,4), rgb("0080aa"));
label(Label("$P(at^2,2at)$"), (1,2), SE);

// --- Perpendicular from P to axis ---
draw((1,2)--(1,0));

// --- Horizontal line through P (extended, to directrix) ---
draw((7,2)--(-1,2));

// --- Angle mark theta at (-1,0), between axis and tangent ---
real rad1 = 0.4;
pair center1 = (-0.5 - rad1, 0);
draw(arc(center1, rad1, 0, 45));
label(Label("$\theta$"), (-0.6, 0.1), NE);

// --- Angle mark at (1,2), between horizontal PM and tangent ---
real rad2 = 0.4;
pair center2 = (0.5 + rad2, 2);
draw(arc(center2, rad2, 180, 225));

// --- Labels ---
label("$T$", (-1,0), SW);
label(Label("$S(a,0)$"), (1,0), S);
label("$M$", (-1,2), W);

// --- Line P to N on axis, foot N ---
draw((1,2)--(3,0));
label("$N$", (3,0), S);
