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
draw((-3.8,0)--(4.8,0), black, Arrow);
draw((0,-2.4)--(0,2.4), black, Arrow);
label("$x$", (4.8,0), E);
label("$y$", (0,2.4), N);
label("$C$", (0,0), SW);

// --- Ellipse ---
draw(ellipse((0,0), a, b), blue20);

real qx = a*cos(330*pi/180);
real qy = b*sin(330*pi/180);

draw((px, py) -- (qx, qy));

point mid = ((px + qx)/2, (py + qy)/2);

label("$A(x_2, y_2)$", (qx, qy), SE);
label("$B(x_3, y_3)$", (px, py), NE);
label("$P(x_1, y_1)$", mid, NE);
filldraw(circle(mid, 0.08), blue20);
