CREATE or REPLACE FUNCTION fun12
RETURN number
IS
    total_billed number;
BEGIN
    select count(order_no) into total_billed from sales_order56;
    return total_billed;
END;
/
/*
SQL> @/var/nfs/.home/mca2017/mca1756/varna/s3/pl_sql/count2.sql 

Function created.

*/
