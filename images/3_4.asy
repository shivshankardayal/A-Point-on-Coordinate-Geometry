settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(2cm);

draw((-0.2, -0.2) -- (1.2, 1.2), Arrows);
label("$A$", (1, 1), E);
label("$B$", (-0.1, -0.1), E);
dot((1, 1));
dot((0.1, 0.1));
