CREATE or REPLACE FUNCTION fun1(month in integer) 
RETURN number
IS
    total_billed number;
BEGIN
    select sum(qty_ordered*product_rate) into total_billed from sales_order_details46 SD, Sales_order46 S where SD.order_no=S.order_no  and billed_yn='Y' and EXTRACT(MONTH FROM order_date)= month;
    return total_billed;
END;
/
/*
SQL> @/var/nfs/.home/mca2017/mca1756/varna/s3/pl_sql/function13.sql 

Function created.

*/
