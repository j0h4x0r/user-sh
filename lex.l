%{

	#include "bison.tab.h"
	int yywrap(void);

%}

%%

[^\t\n<>&|]+			{ return STRING;}
[<>&|]				{ return yytext[0];}
[\t\n]				;

%%

int yywrap(void)
{
	return 1;
}
