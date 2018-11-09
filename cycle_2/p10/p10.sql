declare
	n number:=&n;
	sum1 number:=0;

begin
	for i in 0..(n - 1)
	loop
		if MOD(i,2) = 1 then
			sum1 := sum1 + i;
		end if;
	end loop;
	dbms_output.put_line('The sum of first ' || n || ' odd numbers is ' || sum1);
end;
/
