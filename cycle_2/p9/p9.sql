declare
	one number:=&one;
	two number:=&two;
	three number:=&three;

begin
	IF one > two THEN
		IF one > three THEN
			dbms_output.put_line('First number is largest');
		ELSE
			dbms_output.put_line('Third number is largest');
		END IF;
	ELSIF two > one THEN
		IF two > three THEN
			dbms_output.put_line('Second number is largest');
		ELSE
			dbms_output.put_line('Third number is largest');
		END IF;
	END IF;
END;
/
