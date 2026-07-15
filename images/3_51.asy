settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
import labelpath;

size(4cm);
defaultpen(linewidth(.5bp));

point A = (5, 0);
point B = (0, 2.5);
point P = (1, 2);

draw(origin -- P, red);
draw(origin -- A -- B -- cycle);

label("$O(0, 0)$", origin, SW);
label("$A(5, 0)$", A, SE);
label("$B(0, 5/2)$", B, N);
label("$P(1, 2)$", P, NE);
