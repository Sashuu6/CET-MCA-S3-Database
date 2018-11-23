CREATE or REPLACE FUNCTION fun12
RETURN number
IS
    total_billed number;
BEGIN
    select count(order_no) into total_billed from sales_order46;
    return total_billed;
END;
/
