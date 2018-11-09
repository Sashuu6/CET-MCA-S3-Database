DECLARE 
	i INTEGER := 1 ; 
	n number;
	fac INTEGER := 1 ; 
BEGIN 
	n := &n; 
	FOR i IN  1..n LOOP  
		fac := fac * i;
	END LOOP; 
	dbms_output.put_line('The factorial of ' || n || ' is ' || fac);
END; 
/
