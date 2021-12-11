if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-54";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(2cm);
draw((-1.5,0)--(1.5,0));
draw((0,-1.5)--(0,1.5));
draw(circle((0,0),1));
draw((0,0)--dir(30));
label("$R$", dir(30)/2, dir(30+90));
dot("$z$", dir(30), dir(30));
