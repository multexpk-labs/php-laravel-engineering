#!/usr/bin/env bash
set -u

echo '== Laravel Health Snapshot =='
printf 'Time: '; date -Is
printf 'Disk: '; df -h . | tail -n 1

if [ -f artisan ]; then
  php artisan about 2>/dev/null | head -n 30 || true
  echo 'Migration status:'
  php artisan migrate:status 2>/dev/null | tail -n 20 || true
else
  echo 'Run this script from a Laravel project root.'
fi
