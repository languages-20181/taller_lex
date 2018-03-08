%{

%}

%%
[ \t]+		;

[0-9]+\+[0-9]+\i |
[0-9]+\.[0-9]+\+[0-9]+\i { printf("SI es imaginario\n",yytext);}

[0-9]+ |
[0-9]+\.[0-9]+ { printf("NO es imaginario\n",yytext);}

%%

#include <stdio.h>

main()
{
	yylex();
}
