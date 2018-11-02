DECLARE
  	n number :=&n ;
	factorial number :=1;
BEGIN
	for i in 1..n
	loop
	factorial := factorial*i;
	end loop;
             dbms_output.put_line('FACTORIAL = '||factorial); 
