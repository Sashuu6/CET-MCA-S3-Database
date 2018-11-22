DECLARE
	
	total_count number;
BEGIN
	total_count := fun12();
	dbms_output.put_line('Sum total:'||'   '||total_count);
	end;
/
/*
SQL> @/var/nfs/.home/mca2017/mca1756/varna/s3/pl_sql/count1.sql 
Sum total:   6

PL/SQL procedure successfully completed.

*/
