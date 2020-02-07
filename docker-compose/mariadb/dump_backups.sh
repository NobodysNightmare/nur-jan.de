BACKUP_DIR=$(dirname "${BASH_SOURCE[0]}")/../../www/nur-jan.de/backups/

function dump_database {
  echo "Dumping $1..."

  docker exec -e DUMP_DB=$1 mariadb_db_1 sh -c 'exec mysqldump --databases $DUMP_DB -uroot -p"$MYSQL_ROOT_PASSWORD"' | gzip > $BACKUP_DIR/in_progress.sql.gz
  mv $BACKUP_DIR/in_progress.sql.gz $BACKUP_DIR/$1.sql.gz
}

dump_database "dynamic_dns"
dump_database "energy"
dump_database "expenses"
dump_database "grafana"
dump_database "sprit"
