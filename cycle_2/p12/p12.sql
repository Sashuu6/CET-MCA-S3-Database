DECLARE
    str varchar2(20):='&str';
    rev varchar2(20);
    l number;
    i number;
 
BEGIN
    l:=length(str);
    
    for i in reverse 1..l
    loop
        rev:=rev || substr(str,i,1);
    end loop;
    dbms_output.put_line('The reverse of the string "' || str || '" is ' || rev);
END;
/
