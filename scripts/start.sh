#!/bin/bash
cd "$(dirname "$0")/.."

echo "=== Lancement des conteneurs Zabbix ==="
docker-compose up -d

echo "=== Vérification des conteneurs ==="
docker-compose ps

echo "=== Logs récents du serveur Zabbix ==="
docker logs --tail 20 zabbix-server

echo "=== Logs récents de l'interface web ==="
docker logs --tail 20 zabbix-web

echo "=== Lancement terminé ==="
echo "Accéder à l'interface web : http://<IP_MACHINE>:8080"
