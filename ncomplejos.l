%{
#include <stdio.h>
int valido = 0;
%}

Reales    [+-]?([0-9]+(\.[0-9]+)?|\.[0-9]+)
Imaginarios   [iIjJ]

%%

^{Reales}[+-]{Reales}{Imaginarios}$   { valido = 1; }
^.*$                       { valido = 0; }

%%

int main(int argc, char *argv[])
{
    if (argc != 2) {
        printf("Uso: ./complejo archivo.txt\n");
        return 1;
    }

    FILE *archivo = fopen(argv[1], "r");
    if (!archivo) {
        printf("No se pudo abrir el archivo\n");
        return 1;
    }

    yyin = archivo;
    yylex();

    if (valido)
        printf("ACEPTA\n");
    else
        printf("NO ACEPTA\n");

    fclose(archivo);
    return 0;
}

int yywrap(void)
{
    return 1;
}
