
%{
#include <stdio.h>
%}

%%

. ;

[[:space:]] ;

[A-Za-z0-9_.-]+[^_. -][@][A-Za-z0-9_.-]*[A-Za-z0-9][-_][ ] ;

[A-Za-z0-9_.-]+[^_. -][@][A-Za-z0-9_.-]*[A-Za-z0-9](^-)* {
	printf ("%s\n", yytext);
}
 

%%

int main() {
  yylex();
  return 0;
}
