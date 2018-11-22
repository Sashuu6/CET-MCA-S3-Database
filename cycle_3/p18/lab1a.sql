DECLARE 
	x varchar(10):='&x';
	y number:=&y;
BEGIN
lab1(x,y);
end;
/

/*
SQL> set serveroutput on
SQL> @lab1a.sql
Enter value for x: a
old   2: 	x varchar(10):='&x';
new   2: 	x varchar(10):='a';
Enter value for y: 2
old   3: 	y number:=&y;
new   3: 	y number:=2;
vandana saitwa
basu navindgi
Ravisreedharan

PL/SQL procedure successfully completed.

*/

