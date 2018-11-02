DECLARE
    p varchar2(10):='&p';
    c product_master45.cost_price%type;
BEGIN
    dbms_output.put_line('Given product_no is '||p);
    select cost_price into c from product_master45 where product_no=p;
    update product_master45 set cost_price=cost_price-200 where product_no=p and cost_price > 3200;
    if SQL%NOTFOUND then
	dbms_output.put_line('Cost price cannot less than 3000');
	else	
	select cost_price into c from product_master45 where product_no=p; 
	dbms_output.put_line('Cost price After updation  = '||c);
	end if;
EXCEPTION
	when no_data_found then
		dbms_output.put_line('Invalid product number');
	when others then
		dbms_output.put_line('Error');
