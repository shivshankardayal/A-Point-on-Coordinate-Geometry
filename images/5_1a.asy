settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

size(4cm);

real cx = 0, cy = 0;
real r = 3;

// -- Equilateral triangle vertices (angles: 90, 210, 330) --
pair v1 = (cx, cy + r);                                  // top
pair v2 = (cx + r*cos(7*pi/6), cy + r*sin(7*pi/6));       // bottom-left
pair v3 = (cx + r*cos(11*pi/6), cy + r*sin(11*pi/6));     // bottom-right

// -- Circle --
draw(circle((cx,cy), r), gray);

// -- Triangle --
filldraw(v1--v2--v3--cycle, rgb(0.231,0.545,0.831)+opacity(0.07), blue);

// -- Vertex labels --
label("$P$", v1, N);
label("$Q$", v2, W);
label("$R$", v3, E);

// -- Triangle vertices (dots) --
dot(v1, blue+linewidth(4bp));
dot(v2, blue+linewidth(4bp));
dot(v3, blue+linewidth(4bp));

// -- Centre point --
dot((cx,cy), black+linewidth(4bp));

// -- Radius line (centre -> top vertex) --
draw((cx,cy)--v1, red+dashed+linewidth(0.8bp));

// -- Perpendicular from centre to base (r/2 line) --
real baseMidY = cy - r/2;
pair baseMid = (cx, baseMidY);
draw((cx,cy)--baseMid, orange+dashed+linewidth(0.8bp));

// -- Right-angle mark at base midpoint --
real s = 0.15;
draw((cx, baseMidY)--(cx+s, baseMidY), orange+linewidth(0.7bp));
draw((cx+s, baseMidY)--(cx+s, baseMidY+s), orange+linewidth(0.7bp));

// -- Base midpoint dot --
dot(baseMid, orange+linewidth(3.5bp));
label("$L$", baseMid, S);

// -- Labels --
// Centre
label("centre$\ (-g,-f)$", (cx-0.2, cy+0.25), W, fontsize(8pt));

// Radius label (on dashed red line)
label("$r$", (cx+0.18, cy + r/2), E, red+fontsize(9pt));

// r/2 label (on orange dashed line)
label("$r/2$", (cx+0.18, cy - r/4), E, orange+fontsize(9pt));

// Side label on left edge
pair sideMid = ((v1.x+v2.x)/2 - 0.3, (v1.y+v2.y)/2);
label("$a = r\sqrt{3}$", sideMid, W, blue+fontsize(8pt));
