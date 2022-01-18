if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-3";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1.5cm);
draw((-1.5,0)--(1.5,0));
draw((0,-1.5)--(0,1.5));
draw(circle((0,0),1), gray);
pair p = (2,1) * 0.7;
dot("$z={\color{blue}r}e^{i{\color{red}\theta}}$", p, N);
draw(arc((0,0),0.5,0,30-3), red);
draw((0,0)--p, blue);
label("\color{red}$\theta$", (0,0), 7*dir(15));
label("\color{blue}$r$", p/2, dir(30+90));