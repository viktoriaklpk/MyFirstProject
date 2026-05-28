CREATE OR REPLACE FUNCTION login_user(
    input_email VARCHAR,
    input_password VARCHAR
)
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
BEGIN
    IF input_email !~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$' THEN
        RETURN -1;
    END IF;

    IF length(input_password) < 8 THEN
        RETURN -2;
    END IF;

    RETURN 1;
END;
$$;
