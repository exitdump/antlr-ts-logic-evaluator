grammar Logic;

logicExpr
    : expression EOF
    ;

expression
    : literal                                  # LiteralExpr
    | variable                                 # VariableExpr
    | functionCall                             # FunctionExpr
    | 'NOT' expression                         # NotExpr
    | expression op=(MUL | DIV | MOD) expression   # MulDivExpr
    | expression op=(ADD | SUB) expression         # AddSubExpr
    | expression op=(GT | LT | GTE | LTE | EQ | NEQ) expression # CompareExpr
    | expression op=(AND | OR) expression      # LogicalExpr
    | LPAREN expression RPAREN                 # ParensExpr
    ;

functionCall
    : IDENTIFIER LPAREN (expression (COMMA expression)*)? RPAREN
    ;

variable
    : LBRACE IDENTIFIER RBRACE
    ;

literal
    : NUMBER
    | BOOLEAN
    | STRING
    ;

ADD     : '+';
SUB     : '-';
MUL     : '*';
DIV     : '/';
MOD     : '%';

GT      : '>';
LT      : '<';
GTE     : '>=';
LTE     : '<=';
EQ      : '==';
NEQ     : '!=';

AND     : 'AND';
OR      : 'OR';

LPAREN  : '(';
RPAREN  : ')';
LBRACE  : '{';
RBRACE  : '}';
COMMA   : ',';

BOOLEAN : 'true' | 'false';
NUMBER  : [0-9]+ ('.' [0-9]+)?;
STRING  : '"' (~["\\] | '\\' .)* '"' | '\'' (~['\\] | '\\' .)* '\'';
IDENTIFIER : [a-zA-Z_][a-zA-Z0-9_]*;

WS : [ \t\r\n]+ -> skip;
