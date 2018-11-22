
SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE maxmin 
IS
    max1 number;
 min1 number;

BEGIN 
  SELECT MAX(Sell_price),MIN(Sell_price) INTO max1,min1 from product_master46;
  dbms_output.put_line(max1||' is the Maximun value');
  dbms_output.put_line(min1||' is the Minimum value');
END; 
/

/*

SQL> @/var/nfs/.home/mca2017/mca1756/varna/s3/pl_sql/proce2.sql

Procedure created.

*/
