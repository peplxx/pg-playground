{"Servers": {
    "1": {
      "Name": "${POSTGRES_DB}",
      "Group": "Servers",
      "Host": "database",
      "Port": ${POSTGRES_PORT},
      "Username": "${POSTGRES_USER}",
      "Password": "${POSTGRES_PASSWORD}",
      "SSLMode": "prefer",
      "MaintenanceDB": "postgres"
    }
}
}