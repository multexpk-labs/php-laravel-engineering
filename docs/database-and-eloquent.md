# Database & Eloquent

## Topics

- migrations and schema evolution
- indexes and constraints
- relationships
- eager and lazy loading
- query scopes
- transactions
- factories and seeders
- pagination
- bulk operations
- query performance

## Safe Change Pattern

```text
Design → Migration → Test Data → Query → Test → Measure → Deploy
```

Use database constraints for invariants that must hold regardless of application code. Use transactions for related writes that must succeed or fail together.

Watch for N+1 queries, unbounded result sets, missing indexes, unnecessary columns, and repeated external calls.