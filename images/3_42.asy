settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
size(150);
defaultpen(linewidth(.5bp));

draw((0, 0) -- (5/3, -4/3) -- (1, 1) -- (-2/3, 7/3) -- (0, 0));
draw((0, 0) -- (1, 1));
draw((5/3, -4/3) -- (-2/3, 7/3));

label("$A(0, 0)$", origin, SW);
label("$B(5/3, -4/3)$", (5/3, -4/3), S);
label("$C(1, 1)$", (1, 1), NE);
label("$D(-2/3, 7/3)$", (-2/3, 7/3), N);
