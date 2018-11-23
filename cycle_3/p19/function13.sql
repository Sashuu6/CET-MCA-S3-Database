CREATE or REPLACE FUNCTION fun1(month in integer) 
RETURN number
IS
    total_billed number;
BEGIN
    select sum(qty_ordered*product_rate) into total_billed from sales_order_details46 SD, Sales_order46 S where SD.order_no=S.order_no  and billed_yn='Y' and EXTRACT(MONTH FROM order_date)= month;
    return total_billed;
END;
/

