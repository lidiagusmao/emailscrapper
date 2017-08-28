%{
	
#include <stdio.h>
	
%}
	
word [A-Za-z0-9]
	
%%

{word}+([._-]{word}+)*[@]{word}+([._-]{word}+)*(.com)?(.br)?[_-] ;

{word}+([._-]{word}+)*[@]{word}+([._-]{word}+)*(.com)?(.br)? { printf("%s\n",yytext); }
	
.  ;
\n ;
		
%%
	
int main() {
 yylex();
 return 0;
}
