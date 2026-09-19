# Production Deployment

## Pre-Deployment

- verify PHP and Laravel versions
- review dependency changes
- confirm migration compatibility
- back up critical data according to the recovery plan
- confirm environment configuration
- run tests
- review the Git diff

## Deployment

```text
Release Artifact → Migration → Application Update → Cache/Worker Handling → Health Check
```

Queue workers and scheduled tasks require explicit deployment handling.

## Post-Deployment

- check application health
- inspect error logs
- verify critical user flows
- check queues and scheduled tasks
- monitor resources
- document release and rollback path