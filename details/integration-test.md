---
title: "Integration Test Template"
api: "/api/integration-test"
layout: code_page
---

This template helps you create comprehensive integration tests that verify the interaction between different components, services, and external systems in your application.

## Sample Prompt

```
Create integration tests for an e-commerce checkout process:
- User authentication and session management
- Product inventory verification and reservation
- Payment processing with third-party gateway
- Order creation and database persistence
- Email notification service integration
- Shipping calculation with external APIs
```

## What This Template Covers

- **API integration testing** between microservices and external systems
- **Database integration** with real or test database instances
- **Third-party service mocking** and contract testing approaches
- **End-to-end workflow validation** across multiple system boundaries
- **Error handling scenarios** and failure recovery testing
- **Performance implications** of integration points and timeouts

## Best Practices

1. **Use test containers** or dedicated test environments for isolation
2. **Mock external dependencies** that are unreliable or expensive
3. **Test both happy path and error scenarios** thoroughly
4. **Implement proper test data management** and cleanup procedures
5. **Use contract testing** for API compatibility validation
6. **Run integration tests in CI/CD pipelines** with appropriate scheduling
7. **Monitor test execution time** and optimize slow integration tests
8. **Separate integration tests from unit tests** for better test organization

## When to Use This Template

- Validating interactions between microservices or system components
- Testing third-party API integrations and data exchanges
- Verifying database operations and transaction handling
- Testing complete user workflows that span multiple services
- Ensuring system reliability before production deployments
