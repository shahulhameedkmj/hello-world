BEGIN
    -- risky code
    UPDATE employees SET salary = salary * 1.1 WHERE dept_id = 10;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No rows found');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
