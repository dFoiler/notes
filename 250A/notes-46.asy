if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-46";
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
draw((-1.55,0,-0.3) -- (-1.55,0,-2+0.3), EndArrow3);
label("$\pi$", (-1.68,0,-1));
draw((-1.45,0,-2+0.3) -- (-1.45,0,-0.3), Arrow3(DefaultHead2(),Fill,emissive(green)), p=green);
label("$m$", (-1.31,0,-1), p=green);

real rs(real t)
{
return 0.15*cos(t-0.5) + 0.03*sin(7*(t-0.5)) + 0.08*sin(2*(t-0.5));
}
real fx(real t) {return cos(t+offset) + rs(t)*cos(t)*sin(t/2);}
real fy(real t) {return sin(t+offset) + rs(t)*sin(t)*sin(t/2);}
real fz(real t) {return rs(t)*cos(t/2);}
draw(graph(fx,fy,fz, 0, 2pi, operator ..), green+linewidth(1.5));

void drawProjection(real theta, pen thisPen)
{
triple top = (fx(theta),fy(theta),fz(theta));
triple bot = (cos(theta+pi),sin(theta+pi),-2);
draw(0.07*top+0.93*bot -- 0.93*top+0.07*bot, arrow=Arrow3(DefaultHead2(),Fill,emissive(thisPen)), p=thisPen);
dot(top, p=thisPen);
dot(bot, p=thisPen);
}
drawProjection(-2pi/3-offset+2pi, orange);
drawProjection(-pi/6-offset+2pi, red);
