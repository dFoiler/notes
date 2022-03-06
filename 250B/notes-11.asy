if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-11";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph3;
// thank you https://asymptote.sourceforge.io/asymptote_tutorial.pdf
unitsize(2cm);
currentprojection=orthographic(0,-2,1);

real offset = pi;
triple F(pair uv) {
real t = uv.x;
real r = uv.y;
return (
cos(t+offset) + r*cos(t)*sin(t/2),
sin(t+offset) + r*sin(t)*sin(t/2),
r*cos(t/2)
);
}
real r = 0.2;
surface moeb = surface(F, (0,-r), (2pi,r), Spline);
draw(moeb, surfacepen=material(gray(0.7)+opacity(0.7), emissivepen=0.2 white));

real x(real t) {return cos(2pi*t);}
real y(real t) {return sin(2pi*t);}
real z1(real t) {return 0;}
real z2(real t) {return -2;}
draw(graph(x,y,z1,0,1,operator ..));
draw(graph(x,y,z2,0,1,operator ..));

label("$X$", (-1.5,0,0));
label("$S^1$", (-1.5,0,-2));
draw((-1.5,0,-0.3) -- (-1.5,0,-2+0.3), EndArrow3);
label("$\pi$", (-1.63,0,-1));

real theta = -1;
dot((cos(theta), sin(theta), 0), red);
dot((cos(theta), sin(theta), -2), red);
draw((cos(theta), sin(theta), -2+0.3) -- (cos(theta), sin(theta), -0.3), arrow=Arrow3(DefaultHead2(),Fill,emissive(red)), p=red+dashed);

real t0 = theta-offset;
real r0 = -0.4;
draw(F((t0,-r0)) -- F((t0,r0)), arrow=Arrow3(DefaultHead2(),Fill,emissive(red)), p=red);
draw(F((t0,r0)) -- F((t0,-r0)), arrow=Arrow3(DefaultHead2(),Fill,emissive(red)), p=red);

label("$x$", (1.3*cos(theta), 1.3*sin(theta), -2), p=red);
label("$\pi^{-1}(x)$", (1.3*cos(theta-0.1)+0.5, 1.3*sin(theta-0.1), 0), p=red);
