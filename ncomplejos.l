%{
#include <stdio.h>
%}

d       [0-9]
ent     {d}+
dec     ({d}+\.{d}+|\.{d}+)
exp     [eE][+-]?{d}+
real    [+-]?({ent}|{dec})({exp})?
imag    [iIjJ]

%%

^[+-]?({ent}|{dec})({exp})?[+-]({ent}|{dec})({exp})?{imag}$ 
{ printf("acepta (complejo)\n"); }

^[+-]?({ent}|{dec})({exp})?$ 
{ printf("acepta (real)\n"); }

^[+-]?({ent}|{dec})?{imag}$ 
{ printf("acepta (imaginario)\n"); }

^.*$ 
{ printf("no acepta\n"); }

%%

int yywrap()
{
    return 1;
}

