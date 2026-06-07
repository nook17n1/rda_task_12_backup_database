#! /bin/bash
mysqldump -u "$DB_USER" -p"$DB_PASSWORD" ShopDB --no-create-db --result-file=backup-no-create-db.sql
mysql -u "$DB_USER" -p"$DB_PASSWORD"  ShopDBReserve < backup-no-create-db.sql
mysqldump -u "$DB_USER" -p"$DB_PASSWORD" ShopDB --no-create-info --result-file=backup-no-create-info.sql
mysql -u "$DB_USER" -p"$DB_PASSWORD"  ShopDBDevelopment < backup-no-create-info.sql
