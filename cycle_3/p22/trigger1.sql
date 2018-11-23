CREATE OR REPLACE TRIGGER UPDATION46 
BEFORE UPDATE ON product_master46 
FOR EACH ROW 
WHEN (NEW.profit_percent < OLD.profit_percent)  
BEGIN
RAISE_APPLICATION_ERROR(-20001,'New value must be greater than Old value');
END;
/ 


/*

SQL> @/var/nfs/.home/mca2017/mca1746/CET-MCA-S3-Database/cycle_3/p22/trigger1.sql;

Trigger created.

SQL> update product_master46 set profit_percent=3 where product_no='P00001';
update product_master46 set profit_percent=3 where product_no='P00001';
       *
ERROR at line 1:
ORA-20001: New value must be greater than Old value
ORA-06512: at "USER1.UPDATION46", line 2
ORA-04088: error during execution of trigger 'USER1.UPDATION46'


*/

