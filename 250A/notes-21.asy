if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-21";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.5cm);
usepackage("chessfss"); // thank you https://tex.stackexchange.com/a/543024
fill((0,0)--(1,0)--(1,4)--(0,4)--cycle, lightgray);
fill((4-0,0)--(4-1,0)--(4-1,4)--(4-0,4)--cycle, lightgray);
for(int i = 0; i < 5; ++i)
{
draw((i,0)--(i,4));
draw((0,i)--(4,i));
}
label("\color{red}\rook", (0.5,1.5));
label("\rook", (0.5,2.5));
label("$\to$", (5,2));
