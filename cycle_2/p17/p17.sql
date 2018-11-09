DECLARE 
   PRODUCT_NO varchar(30); 
   DESCRIPTION varchar(30); 
  
   CURSOR client_master46 is 
      SELECT name FROM Clientmaster_46 where state='Maharashtra'; 
BEGIN 
   OPEN client_master46; 
   LOOP 
   FETCH client_master46 into PRODUCT_NO; 
      EXIT WHEN client_master46%notfound; 
      dbms_output.put_line(PRODUCT_NO || ' ' ); 
   END LOOP; 
   CLOSE client_master46; 
END;
/

