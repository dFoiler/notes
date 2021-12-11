if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-36";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
draw((1,1) -- (1,-1) -- (-1,-1) -- (-1,1) -- cycle);
draw((-1.3, -1.3) -- (1.3,1.3), red+dashed); label("\color{red}$v$", (1.3,1.3), NE);
draw((1.3, -1.3) -- (-1.3,1.3), magenta+dashed); label("\color{magenta}$w$", (-1.3,1.3), NW);
draw((0,-1.3) -- (0,1.3), blue+dashed); label("\color{blue}$h$", (0,1.3), N);
