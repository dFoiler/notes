if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import three;
unitsize(1.4cm);
currentprojection=perspective(1,-0.5,0.5);
draw((-3,0,0)--(3,0,0), EndArrow3);
label("$x$", (3,0,0), (2,0,0));
draw((0,-3,0)--(0,3,0), EndArrow3);
label("$y$", (0,3,0), (0,2,0));
draw((0,0,-2)--(0,0,2), EndArrow3);
label("$z$", (0,0,2), (0,0,1));

//create segment
path3 top = (2.5,0,0) -- (0,0,0);
path3 bot = -(2.5,0,0) -- (0,0,0);
//create surface of revolution
surface topSurface = surface(top, c=O, axis=(1,1,0));
surface botSurface = surface(bot, c=O, axis=(1,1,0));
//draw surface
draw(topSurface, orange+opacity(0.8));
draw(botSurface, orange+opacity(0.8));
