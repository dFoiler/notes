if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-7";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.5cm);
usepackage("chessfss"); // thank you https://tex.stackexchange.com/a/543024
fill((1,0)--(2,0)--(2,4)--(1,4)--cycle, lightgray);
for(int i = 0; i < 5; ++i)
{
draw((i,0)--(i,4));
draw((0,i)--(4,i));
}
label("\rook", (0.5,1.5));
label("\color{red}\rook", (1.5,3.5));
label("\rook", (1.5,2.5));
label("\rook", (1.5,0.5));
label("$\to$", (5,2));