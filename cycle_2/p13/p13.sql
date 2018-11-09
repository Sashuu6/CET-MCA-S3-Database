DECLARE
    n number:=&n;
    rev number:=0;
    d number;
    i number;
    disp number;
 
BEGIN
    disp:= n;
    while n>0
 	loop
	d:=mod(n,10);
	rev:=rev*10+d;
    	n:=trunc(n/10);
        end loop;
    dbms_output.put_line('The reverse of the number ' || disp || ' is '||rev);
END;
/
