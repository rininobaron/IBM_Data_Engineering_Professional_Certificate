--Restoration
\i flights_RUSSIA_small.sql

--check database
\dt

--query table
SELECT * FROM aircrafts_data;

--Insert new row into aircrafts_data 
INSERT INTO aircrafts_data(aircraft_code, model, range) VALUES (380, '{"en": "Airbus A380-800"}', 15700);

--Confirm if the row was inserted correctly
SELECT * FROM aircrafts_data;

--Query
SELECT * FROM tickets WHERE booking_ref = '0002D8';

--Update name value
UPDATE tickets SET passenger_name = 'SANYA KORELEVA' WHERE booking_ref = '0002D8';

