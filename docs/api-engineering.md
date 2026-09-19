# Laravel API Engineering

## API Design

- define stable resource contracts
- validate request input
- authorize requested operations
- return consistent status codes and error structures
- paginate collection endpoints
- version APIs when compatibility requires it
- document authentication and rate limits

## Webhooks

Treat incoming webhooks as untrusted input. Verify signatures where supported, validate payloads, make handlers idempotent, and record enough information to diagnose failures without storing unnecessary sensitive data.

## Integration Pattern

```text
Request → Validate → Authorize → Execute → Persist → Respond
```

For asynchronous work:

```text
Request → Validate → Queue → Worker → External API → Persist Result → Notify
```