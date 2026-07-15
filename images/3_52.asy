settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
import labelpath;

size(6cm);
defaultpen(linewidth(.5bp));

point A = (1, 2);
point B = (3, 4);
point C = (2, 4);
point D = (6, 8);
draw(A -- B, blue);
draw(C -- D, red);
draw(origin -- C, gray);
draw(origin -- D, gray);

label("$S(0, 0)$", origin, S);
label("$A(1, 2)$", A, W);
label("$B(3, 4)$", B, E);
label("$C(2, 4)$", C, W);
label("$D(6, 8)$", D, E);
