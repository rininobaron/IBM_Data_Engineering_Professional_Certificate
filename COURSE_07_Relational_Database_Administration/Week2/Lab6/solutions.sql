--Practice Exercise
 
--5tep 1: Create user
CREATE USER user_b WITH PASSWORD 'user_b_password';

--Step 2: Grant read and write priviliges to previous user
--using 'read_write' role created on this lab
GRANT read_write TO user_b;

--In order to visualize the updates
\du