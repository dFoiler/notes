if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
fill((0,1)--(1,0)--(0,-1)--(-1,0)--cycle, lightgray);
draw((0,1)--(1,0)--(0,-1)--(-1,0)--cycle, dashed);
draw((-1.5,0)--(1.5,0));
draw((0,-1.5)--(0,1.5));
