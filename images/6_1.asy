settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;
size(7cm);

defaultpen(linewidth(0.5pt)+fontsize(10pt));

// --- Axes ---
draw((-1.5,0)--(6.5,0), black, Arrow);
draw((0,-2.8)--(0,2.8), black, Arrow);
label("$x$", (6.5,0), E);
label("$y$", (0,2.8), N);
label("$O$", (0,0), SW);

// Axis tick labels (x = 1..6)
for(int i = 1; i <= 6; ++i){
    draw((i,0.08)--(i,-0.08));
    label(scale(0.85)*Label((string) i), (i,-0.08), S);
}
draw((-1,0.08)--(-1,-0.08));
label(scale(0.85)*Label("$-1$"), (-1,-0.08), S);

// y-axis ticks
int[] yticks = {-2,-1,1,2};
for(int i = 0; i < yticks.length; ++i){
    int yi = yticks[i];
    draw((0.08,yi)--(-0.08,yi));
    label(scale(0.85)*Label((string) yi), (-0.08,yi), W);
}

// --- Directrix: x = 7/4 ---
draw((7/4,-2.8)--(7/4,2.8), blue+linewidth(1pt)+dashed);
label(scale(0.85)*Label("directrix"), (7/4,-2.9), S);

// --- Axis of symmetry ---
draw((-1,0)--(6.5,0), gray+linewidth(0.8pt)+linetype("2 2"));

// --- Parabola: x = y^2 + 2, parametric in y ---
guide g;
for(real y = -2.4; y <= 2.401; y += 0.2){
    g = g .. (y*y + 2, y);
}
draw(g, purple+linewidth(0.5pt));

// --- Vertex V(2, 0) ---
filldraw(circle((2,0), 0.07), purple, nullpen);

// --- Focus F(9/4, 0) ---
filldraw(circle((9/4,0), 0.07), red, nullpen);
label(Label("$S$ (Focus)"), (9/4,0), NW);

// --- Point P(3, 1) ---
filldraw(circle((3,1), 0.07), rgb(0,0.5,0.5), nullpen);  // teal
label("$P$", (3,1), NW);

// --- Line P to Focus ---
draw((3,1)--(9/4,0), red+dashed);

// --- Line P to directrix (perpendicular, horizontal) ---
draw((3,1)--(7/4,1), blue+dashed);
label("$N$", (7/4,1), W);
label("$A$", (7/4,0), NW);

// --- Foot D on directrix ---
filldraw(circle((7/4,1), 0.07), blue, nullpen);

// --- Right angle mark at D ---
draw((7/4,1)--(7/4+0.15,1)--(7/4+0.15,1-0.15)--(7/4,1-0.15)--cycle, blue+linewidth(0.8pt));
