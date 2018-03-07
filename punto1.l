%{
#include<stdio.h>
int lines=0, words=0,characters=0;
%}
%%

\n { lines++; words++;}
[\t ' '] words++;
[A-Z] characters++;
[a-z] characters++;
[0-9] characters++;
%%

main()
{
  yyin= fopen("input_punto1.txt","r");
  yylex();
  printf(" This File contains ...");
  printf("\n\t%d lines", lines);
  printf("\n\t%d words",words);
  printf("\n\tIn total %d characters.\n",characters);
}

int yywrap()
{
return(1);
}
