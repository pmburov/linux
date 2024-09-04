DATE=$(date '+%Y-%m-%d')
ASSETS_PATH=~/.penpot/backup/$DATE
DB_PATH=~/.penpot/backup/$DATE/db

mkdir -p $ASSETS_PATH
mkdir -p $DB_PATH

docker cp penpot-penpot-backend-1:/opt/data/assets $ASSETS_PATH

# SQL-Backup:
docker exec -i penpot-penpot-postgres-1 /usr/bin/pg_dump -U penpot penpot > $DB_PATH/penpot-penpot-postgres-1.sql
# or gz
#docker exec -i penpot-penpot-postgres-1 /usr/bin/pg_dump -U penpot penpot | gzip > penpot-penpot-postgres-1.sql.gz
