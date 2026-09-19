#!/usr/bin/env bash
set -u

echo '== Laravel Environment Check =='
printf 'PHP: '; command -v php || true
php -v 2>/dev/null | head -n 1 || true
printf 'Composer: '; command -v composer || true
composer --version 2>/dev/null || true

if [ -f artisan ]; then
  echo 'Laravel: artisan found'
  php artisan --version 2>/dev/null || true
  php artisan about 2>/dev/null | head -n 30 || true
else
  echo 'Laravel: artisan not found in current directory'
fi

[ -f composer.json ] && echo 'Composer manifest: found' || echo 'Composer manifest: missing'
