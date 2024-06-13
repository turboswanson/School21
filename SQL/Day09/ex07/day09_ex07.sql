CREATE OR REPLACE FUNCTION func_minimum(VARIADIC arr NUMERIC[])
RETURNS NUMERIC AS
$$
SELECT MIN(i)
FROM unnest(arr) AS row(i);
$$ LANGUAGE SQL; 

