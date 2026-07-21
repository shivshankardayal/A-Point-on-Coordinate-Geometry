settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;
unitsize(0.2cm);

size(6cm);

// Axes
draw((-1,0)--(10,0), Arrow(4));
draw((0,-6)--(0,6), Arrow(4));

// Axis labels
label("$x$", (10.3,0));
label("$y$", (0,6.4));
label("$O$", (-0.3,-0.3));

// Tick marks and numbers - x-axis
for (int x = 1; x < 10; ++x) {
    draw((x,-0.1)--(x,0.1));
    label(string(x), (x,-0.4), fontsize(7pt));
}

// Tick marks and numbers - y-axis
for (int y = -5; y <= 5; ++y) {
    if (y != 0) {
        draw((-0.1,y)--(0.1,y));
        label(string(y), (-0.45,y), fontsize(7pt));
    }
}

// -- Original circle: centre (4, 4), radius 4 --
// Dashed radius lines showing tangency
draw((4,4)--(0,4), dashed);
draw((4,4)--(4,0), dashed);

// Circle
draw(circle((4,4), 4));

// Centre dot
filldraw(circle((4,4), 0.12), black);
label("(4, 4)", (4.4,4.35), fontsize(7.5pt));

// Radius label
label("r = 4", (2,4.35), fontsize(7pt));

// Tangent touch points
filldraw(circle((0,4), 0.12), black);
label("(0, 4)", (-0.7,4.35), fontsize(7pt));

filldraw(circle((4,0), 0.12), black);
label("(4, 0)", (4.6,-0.4), fontsize(7pt));

// -- Image circle: centre (4, -4), radius 4 --
// Dashed radius lines
draw((4,-4)--(0,-4), dashed);
draw((4,-4)--(4,0), dashed);

// Circle
draw(circle((4,-4), 4));

// Centre dot
filldraw(circle((4,-4), 0.12), black);
label("(4, -4)", (4.4,-4.45), fontsize(7.5pt));

// Radius label
label("r = 4", (2,-4.35), fontsize(7pt));

// Tangent touch point on y-axis
filldraw(circle((0,-4), 0.12), black);
label("(0, -4)", (-0.75,-4.4), fontsize(7pt));
