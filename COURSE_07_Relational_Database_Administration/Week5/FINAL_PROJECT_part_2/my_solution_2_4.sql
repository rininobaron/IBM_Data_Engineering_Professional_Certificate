-- 1. Check time query before indexing
system echo "SELECT * FROM billdata WHERE billedamount > 19999";
SELECT * FROM billdata WHERE billedamount > 19999;

-- 2. Show how many rows were scanned
system echo "EXPLAIN SELECT * FROM billdata WHERE billedamount > 19999";
EXPLAIN SELECT * FROM billdata WHERE billedamount > 19999;

-- 3. Indexing billdata table
system echo "CREATE INDEX billedamount ON billdata";
CREATE INDEX billedamount ON billdata(billedamount);

-- 4. Check if index was created
system echo "SHOW INDEX FROM billdata";
SHOW INDEX FROM billdata;

-- 5. Check time query after indexing
system echo "SELECT * FROM billdata WHERE billedamount > 19999";
SELECT * FROM billdata WHERE billedamount > 19999;

-- 6. Show how many rows were scanned after indexing
system echo "EXPLAIN SELECT * FROM billdata WHERE billedamount > 19999";
EXPLAIN SELECT * FROM billdata WHERE billedamount > 19999;