DECLARE 
   	order_no varchar(6); 
   	salesman_no varchar(30); 
  	sno varchar(30);
   	CURSOR sales_order46(no varchar) is 
      		SELECT order_no, salesman_no FROM sales_order46 where salesman_no=no; 
BEGIN 
   	OPEN sales_order46('&sno'); 
   	LOOP 
   		FETCH sales_order46 into order_no, salesman_no; 
      		EXIT WHEN sales_order46%notfound; 
      		dbms_output.put_line(order_no || ' ' || salesman_no ); 
   	END LOOP; 
   	CLOSE sales_order46; 
END; 
/

