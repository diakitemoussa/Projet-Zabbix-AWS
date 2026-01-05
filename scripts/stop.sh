#!/bin/bash
cd "$(dirname "$0")/.."

echo "=== Arrêt des conteneurs Zabbix ==="
docker-compose down

echo "=== Arrêt terminé ==="
