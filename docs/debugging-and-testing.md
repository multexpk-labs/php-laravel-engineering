# Debugging & Testing

## Evidence-First Debugging

```text
Reproduce → Capture Error → Locate Boundary → Inspect State → Minimal Fix → Test → Verify
```

Useful evidence includes exception messages, stack traces, request IDs, relevant logs, database state, redacted configuration, and exact software versions.

## Test Layers

- unit tests for isolated business rules
- feature tests for application behavior
- integration tests for databases and external services
- browser/end-to-end tests where justified

Run a focused test first, then the broader suite when practical. A green suite does not replace manual review of security-sensitive changes.