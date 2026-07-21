settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;
unitsize(0.2cm);

size(6cm);
draw((-22,0)--(4,0), linewidth(0.8pt), Arrow(4));
draw((0,-8)--(0,18), linewidth(0.8pt), Arrow(4));

label("$x$", (4.4,0));
label("$y$", (0,18.5));
label("$O$", (0.35,-0.4), fontsize(6pt));

// Tick marks - x-axis
for (int x = -21; x < 4; ++x) {
    if (x % 2 == 0 && x != 0) {
        draw((x,-0.15)--(x,0.15), linewidth(0.5pt));
        label(string(x), (x,-0.55), fontsize(5.5pt));
    }
}

// Tick marks - y-axis
for (int y = -6; y < 18; ++y) {
    if (y % 2 == 0 && y != 0) {
        draw((-0.15,y)--(0.15,y), linewidth(0.5pt));
        label(string(y), (-0.6,y), fontsize(5.5pt));
    }
}

// -- Mirror line: 4x + 7y + 13 = 0 --
// at x = -22: y = 75/7 ; at x = 4: y = -29/7
draw((-22,75/7)--(4,-29/7), dashed+linewidth(1pt));
label("4x+7y+13=0", (3.2,-3.2), fontsize(6.5pt));

// -- Original circle: centre (-8, 12), radius 5 --
draw(circle((-8,12), 5), linewidth(0.5pt));

// Centre dot
filldraw(circle((-8,12), 0.18), black);
label("C(-8, 12)", (-6.8,12.5), fontsize(6.5pt));

// -- Image circle: centre (-16, -2), radius 5 --
draw(circle((-16,-2), 5), linewidth(0.5pt));

// Centre dot
filldraw(circle((-16,-2), 0.18), black);
label("C'(-16, -2)", (-14.6,-2.6), fontsize(6.5pt));

// -- Line joining original centre to image centre --
draw((-8,12)--(-16,-2), dotted+linewidth(0.6pt));

// -- Midpoint of CC' = (-12, 5) - lies on the mirror line --
filldraw(circle((-12,5), 0.18), black);
label("mid (-12, 5)", (-10.5,5.4), fontsize(6pt));

// -- Perpendicularity mark (small square) at midpoint --
real sq = 0.35;
draw((-12,5)--(-12+sq,5)--(-12+sq,5+sq)--(-12,5+sq)--cycle, linewidth(0.5pt));
