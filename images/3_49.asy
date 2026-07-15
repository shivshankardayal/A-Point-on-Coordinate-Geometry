settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
size(4cm);
defaultpen(linewidth(.5bp));

point A = (3, 2);
point B = (-1, 8/3);
point C = (-1, -2);

draw(A -- B -- C -- cycle);
fill(circle(origin, .03), red);
label("$A(3, 2)$", A, E);
label("$B(-1, 8/3)$", B, N);
label("$C(-1, -2)$", C, S);
label("$O(0, 0)$", origin, S);
