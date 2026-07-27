settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

defaultpen(linewidth(0.5pt));


// --- Approximate "darken" shades ---
pen blue20   = rgb(0.00,0.00,0.65);   // blue.darken(20%)
pen orange10 = rgb(0.85,0.45,0.00);   // orange.darken(10%)
pen green20  = rgb(0.00,0.45,0.00);   // green.darken(20%)
pen teal10   = rgb(0.00,0.45,0.45);   // teal.darken(10%)
pen red10    = rgb(0.75,0.00,0.00);   // red.darken(10%)

// --- Parameters ---
real a = 3.0;    // semi-major axis
real b = 1.83;   // semi-minor axis
real c = 2.37;   // focal distance

// Point P on ellipse at angle 55 degrees
real ang = 55*pi/180;
real px = a*cos(ang);
real py = b*sin(ang);

// --- Axes ---
draw((-3.8,0)--(3.8,0), black, Arrow);
draw((0,-2.4)--(0,2.4), black, Arrow);
label("$x$", (3.8,0), E);
label("$y$", (0,2.4), N);
label("$O$", (0,0), SW);

// --- Ellipse ---
draw(ellipse((0,0), a, b), blue20);

// --- Foci ---
filldraw(circle((-c,0), 0.08), blue20, nullpen);
filldraw(circle(( c,0), 0.08), blue20, nullpen);
label("$F_1$", (-c,0), S);
label("$F_2$", ( c,0), S);

// --- Point P ---
filldraw(circle((px,py), 0.1), orange10, nullpen);
label(Label("$\mathbf{P}$"), (px,py), NE);

// --- Focal radii (dashed) ---
draw((-c,0)--(px,py), orange10+dashed);
draw(( c,0)--(px,py), green20+dashed);

// r1 label (midpoint of F1-P)
label("$r_1$", ((-c+px)/2 + 0.2, py/2 - 0.1));

// r2 label (midpoint of F2-P)
label("$r_2$", ((c+px)/2 + 0.2, py/2 + 0.1));

// --- Semi-major axis 'a' annotation ---
draw((0,-0.45)--(a,-0.45), purple, Arrows(TeXHead));
label(Label("$a$"), (a/2,-0.45), S, purple);

// --- Semi-minor axis 'b' annotation ---
draw((-0.45,0)--(-0.45,b), teal10, Arrows(TeXHead));
label(Label("$b$"), (-0.45,b/2), W, teal10);

// --- Focal distance 'c' annotation ---
draw((0,0.35)--(c,0.35), red10, Arrows(TeXHead));
label(Label("$c$"), (c/2,0.35), N, red10);

// --- Vertex dots ---
filldraw(circle(( a,0), 0.07), purple, nullpen);
filldraw(circle((-a,0), 0.07), purple, nullpen);
filldraw(circle((0, b), 0.07), teal10, nullpen);
filldraw(circle((0,-b), 0.07), teal10, nullpen);

// --- Legend (bottom-right) ---
label("$a^2=b^2+c^2$", (2.5,-1.6));
label("$r_1+r_2=2a$",  (2.5,-2.0));
