DECLARE 
	PRODUCT_NO varchar(6); 
	DESCRIPTION varchar(30); 
	p_p number;
	u_m varchar(30);
	qoh number;
   	rl number;
   	sp number;
   	cp number;
   	
   	CURSOR Product_master46 is 
   		SELECT * FROM Product_master46; 
BEGIN 
   	OPEN Product_master46; 
   	LOOP 
   		FETCH Product_master46 into PRODUCT_NO, DESCRIPTION,p_p,u_m,qoh,rl,sp,cp; 
      		EXIT WHEN Product_master46%notfound; 
      		dbms_output.put_line(PRODUCT_NO || '     ' || DESCRIPTION || '     ' || p_p || '      ' || u_m || '     ' || qoh || '     ' || rl || '      ' || sp || '     ' || cp); 
   	END LOOP; 
   	CLOSE Product_master46; 
END; 
/
