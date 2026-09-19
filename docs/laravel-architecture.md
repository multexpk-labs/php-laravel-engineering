# Laravel Application Architecture

## Core Layers

- HTTP: routes, middleware, controllers, requests, resources
- Application: services, actions, jobs, events, listeners
- Domain: business rules where complexity requires it
- Persistence: Eloquent models and queries
- Integration: APIs, webhooks, queues, notifications
- Infrastructure: cache, filesystem, database, mail, workers, scheduling

## Request Lifecycle

```text
Request → Middleware → Routing → Controller → Application Logic → Persistence/Integration → Response
```

Start with Laravel conventions. Add architectural layers when complexity demonstrates a need for them.