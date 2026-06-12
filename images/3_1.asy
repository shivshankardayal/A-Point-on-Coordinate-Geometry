settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(4cm);

draw(origin -- (1, 0), Arrow);
draw(origin -- (0.6, 0.4), Arrow);
draw(origin -- (0.5, 0.7), Arrow);
draw(origin -- (0, 1), Arrow);
draw(origin -- (-0.2, 0.8), Arrow);
draw(origin -- (-1, 0), Arrow);
draw(origin -- (-0.6, -0.3), Arrow);
draw(origin -- (-0.4, -0.8), Arrow);
