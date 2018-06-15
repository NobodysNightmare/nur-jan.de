letsencrypt certonly --expand --webroot \
  -w /var/www/letsencrypt/nur-jan.de/ -d nur-jan.de \
  -w /var/www/letsencrypt/sprit.nur-jan.de/ -d sprit.nur-jan.de \
  -w /var/www/letsencrypt/energy.nur-jan.de/ -d energy.nur-jan.de \
  -w /var/www/letsencrypt/dyn.nur-jan.de/ -d dyn.nur-jan.de
