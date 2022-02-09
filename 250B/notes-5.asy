if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-5";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
import graph;
real f(real x)
{
return x*x;
}
draw(graph(f,-1.5,1.5), red);
label("$\left(y-x^2\right)$", (1,1), SE, red);
draw((0,2.25)--(0,-0.5), blue);
label("$(x)$", (0,1.8), E, blue);
