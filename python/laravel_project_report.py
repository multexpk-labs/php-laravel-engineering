#!/usr/bin/env python3
import json
import os
import platform
import sys

root = os.path.abspath(sys.argv[1] if len(sys.argv) > 1 else '.')
markers = ['artisan', 'composer.json', 'composer.lock', '.env.example', 'phpunit.xml']
report = {
    'project_path': root,
    'platform': platform.platform(),
    'python': platform.python_version(),
    'markers': {name: os.path.exists(os.path.join(root, name)) for name in markers},
    'has_vendor_directory': os.path.isdir(os.path.join(root, 'vendor')),
}
print(json.dumps(report, indent=2))
