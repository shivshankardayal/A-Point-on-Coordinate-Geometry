settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;

size(4cm);

point A = (0, 0);
point B = (4, 0);
point C = (2, 1);
point D = (2, -1);

draw(A -- B);
draw(C -- D);

label("$A$", A, W);
label("$B$", B, E);
label("$C$", C, N);
label("$D$", D, S);
