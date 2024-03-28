lexer grammar EZLexer;

fragment DIGITO : [0-9];
fragment LETRA : [a-z];

WS     : [ \t\n]+ -> skip ;
COMMENT : '{' ~[}]* '}' -> skip;

IF	: 'if';
INT	: 'int';
END	: 'end';
VAR	: 'var';
ELSE	: 'else';
BOOL	: 'bool';
READ	: 'read';
REAL	: 'real';
THEN	: 'then';
TRUE	: 'true';
BEGIN	: 'begin';
WRITE	: 'write';
UNTIL	: 'until';
FALSE	: 'false';
REPEAT	: 'repeat';
STRING	: 'string';
PROGRAM	: 'program';

ASSIGN	: ':=';
EQ	: '=';
LESS	: '<';
PLUS	: '+';
MINUS	: '-';
TIMES	: '*';
DIV	: '/';
OP	: '(';
CP	: ')';
COMMA	: ';';

INT_VAL	: DIGITO+;
REAL_VAL : DIGITO+ '.' DIGITO+;
ID: LETRA+;
