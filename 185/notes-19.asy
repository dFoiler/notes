if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-19";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph;
unitsize(1cm);

pair z = (1,1.4);

pair g1(real t)
{
return z+t*(-0.1,0.5);
}
pair g2(real t)
{
return z+t*(-0.8,0.1);
}
pair f(pair z)
{
return (z.x*z.x - z.y*z.y, 2*z.x*z.y);
}
pair fg1(real t)
{
return f(g1(t));
}
pair fg2(real t)
{
return f(g2(t));
}

draw((-4,0)--(2,0), arrow=EndArrow, dotted);
draw((0,-1)--(0,4), arrow=EndArrow, dotted);

draw(graph(g1, 0, 1), arrow=EndArrow, red);
draw(graph(g2, 0, 1), arrow=EndArrow, blue);
dot("$z$", z, S);
label("$\gamma_1$", g1(1), N, red);
label("$\gamma_2$", g2(1), W, blue);

draw(graph(fg1, 0, 1), arrow=EndArrow, red);
draw(graph(fg2, 0, 1), arrow=EndArrow, blue);
dot("$f(z)$", f(z), dir(10));
label("$f\gamma_1$", fg1(1), W, red);
label("$f\gamma_2$", fg2(1), S, blue);
