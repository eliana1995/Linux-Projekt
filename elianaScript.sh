#!/bin/bash

# Kontrollera om mappen logs_backup finns
if [ ! -d "logs_backup" ]; then
    echo "Mappen logs_backup finns inte. Skapar den nu..."
    mkdir logs_backup
else
    echo "Mappen logs_backup finns redan."
fi

# Skapa 5 .log-filer i den aktuella katalogen
for i in {1..10}; do
    touch "logfile_$i.log"
    echo "Skapade logfile_$i.log"
done

# Kopiera alla .log-filer till mappen logs_backup
echo "Kopierar .log-filer till logs_backup..."
cp *.log logs_backup/

# Bekräftelsemeddelande
echo "Alla loggfiler har kopierats till logs_backup."
