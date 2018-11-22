DECLARE
	month integer :=&month;
	total_billed number;
BEGIN
	total_billed := fun1(month);
	dbms_output.put_line('Sum total of all billed orders of the given month:'||'   '||total_billed);
	end;
/

/*
SQL> @/var/nfs/.home/mca2017/mca1756/varna/s3/pl_sql/function13b.sql
Enter value for month: 2
old   2: 	month integer :=&month;
new   2: 	month integer :=2;
Sum total of all billed orders of the given month:   9450

PL/SQL procedure successfully completed.

*/
