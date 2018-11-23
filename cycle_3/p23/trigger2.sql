CREATE OR REPLACE TRIGGER INSERTION46 
	BEFORE INSERT ON product_master46 
FOR EACH ROW 
DECLARE 
	pro_per product_master46.profit_percent%type; 
BEGIN
	SELECT MAX(profit_percent) INTO pro_per FROM product_master46;
	IF(:NEW.profit_percent < pro_per) THEN
	RAISE_APPLICATION_ERROR(-20001,'New profit percent must be greater than Maximum profit percent');
	END IF;
END;
/ 

/*
SQL> @/var/nfs/.home/mca2017/mca1746/CET-MCA-S3-Database/cycle_3/p23/trigger2.sql;

Trigger created.

SQL> insert into product_master46 VALUES('P25315','Printer',5,'Piece',100,20,3000,2500);
insert into product_master46 VALUES('P25315','Printer',5,'Piece',100,20,3000,2500);
            *
ERROR at line 1:
ORA-20001: New profit percent must be greater than Maximum profit percent
ORA-06512: at "USER1.INSERTION46", line 6
ORA-04088: error during execution of trigger 'USER1.INSERTION46'

*/
