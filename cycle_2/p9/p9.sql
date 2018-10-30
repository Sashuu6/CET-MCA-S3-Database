declare
	one number:=&one;
	two number:=&two;
	three number:=&three;

begin
	IF one > two THEN
		IF one > three THEN
			dbms_output.put_line('One');
		ELSE
			dbms_output.put_line('Three');
		END IF;
	ELSIF two > one THEN
		IF two > three THEN
			dbms_output.put_line('Two');
		ELSE
			dbms_output.put_line('Three');
		END IF;
	END IF;
END;
/