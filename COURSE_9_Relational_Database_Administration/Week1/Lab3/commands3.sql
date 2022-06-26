'''
queries to change table name
'''

# ERROR
UPDATE pg_tables SET tablename = 'aircraft_fleet'WHERE tablename = 'aircrafts_data';

# GOOE
ALTER TABLE aircrafts_data RENAME TO aircraft_fleet;