#!/bin/bash
# "pg" in pathes is directory inside docker container

roles='/pg/database/roles.sql'
db='/pg/database/database.sql'
schema='/pg/database/schema.sql'

tables='/pg/tables'

echo 'Run scripts'

psql -f $roles
echo 'Roles has been created'

psql -f $db
echo 'Database has been created'

psql -d $DB_NAME -f $schema
echo 'Schemas has been created'

for table in $tables/*.sql; 
do 
	psql -d $DB_NAME -U $DB_USER -f $table; 
done
echo 'Tables has been created'
