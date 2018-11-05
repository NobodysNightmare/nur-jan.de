set -e
mysqldump --databases dynamic_dns energy expenses grafana sprit | gzip > /var/www/nur-jan.de/backups/databases-in-progress.sql.gz
mv -f /var/www/nur-jan.de/backups/databases-in-progress.sql.gz /var/www/nur-jan.de/backups/databases.sql.gz
