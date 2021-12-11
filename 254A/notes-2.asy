if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.8cm);
draw((-1,0)--(3,0)); draw((0,-2)--(0,2));
draw((1,-2)--(1,2), dashed); label("$\operatorname{Re}s=1$", (1,2), N);
