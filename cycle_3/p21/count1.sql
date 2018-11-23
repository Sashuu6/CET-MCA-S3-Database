DECLARE
	
	total_count number;
BEGIN
	total_count := fun12();
	dbms_output.put_line('Sum total:'||'   '||total_count);
	end;
/
