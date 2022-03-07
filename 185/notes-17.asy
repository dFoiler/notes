if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-17";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1.5cm);
pair z0=dir(20);
real r=1;
for(int i = 0+0; i < 6; ++i)
draw(arc(z0,r,60*i,60*i-60), EndArrow);
dot("$z_0$", z0, -z0);
draw(z0--z0+z0, dotted);
label("$r$", z0+z0/2, dir(20+90));
