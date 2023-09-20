psql -U "$POSTGRES_USER" <<- EOF
    CREATE USER $DB_SERVER_USER_NAME WITH PASSWORD '$DB_SERVER_USER_PASS';
    CREATE USER $DB_CORE_USER_NAME WITH PASSWORD '$DB_CORE_USER_PASS';

    CREATE DATABASE $DB_NAME;

    GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_SERVER_USER_NAME;
    GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_CORE_USER_NAME;
EOF