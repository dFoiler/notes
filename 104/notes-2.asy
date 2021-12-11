if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(2cm);
import graph;
ngraph=1000;
real f(real x)
{
int n = 100;
real total = 0;
for(int i = 1; i < n; ++i)
{
total += sin(i*i*x) / (i*i);
}
return total;
}
draw(graph(f,-4,4), blue);
draw((-4,0)--(4,0));
draw((0,-2)--(0,2));
