CREATE OR REPLACE PROCEDURE lab1(x in varchar, y in number)
iS 
  CURSOR client_master46 is 
      SELECT name FROM client_master46; 
	name varchar(20);
	v varchar(1);
BEGIN
OPEN client_master46; 
   LOOP 
   FETCH client_master46 into name; 
      EXIT WHEN client_master46%notfound; 
      v := substr(name,y,1);
      if v=x then
      dbms_output.put_line(name); 
      end if;
   END LOOP; 
   CLOSE client_master46; 
END; 
/

