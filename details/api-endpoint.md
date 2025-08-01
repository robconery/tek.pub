---
title: "API Endpoint Template"
api: "/api/api-endpoint"
layout: code_page
---

This template helps you create well-structured API endpoints with proper HTTP methods, status codes, and response handling. It ensures your endpoints follow RESTful conventions and include comprehensive error handling.

## Sample Prompt

```
Create a REST API endpoint for user profile management:
- GET /api/users/:id - retrieve user profile
- PUT /api/users/:id - update user profile
- Include validation, authentication, and proper error responses
- Return appropriate HTTP status codes
- Add rate limiting and security headers
```

## What This Template Covers

- **RESTful endpoint design** with proper HTTP methods and status codes
- **Request validation** and parameter handling
- **Authentication and authorization** middleware integration
- **Error handling** with meaningful error messages
- **Response formatting** with consistent data structures
- **Security considerations** including rate limiting and input sanitization

## Best Practices

1. **Follow REST conventions** for resource naming and HTTP methods
2. **Use appropriate status codes** for different response types
3. **Validate all inputs** at the endpoint level
4. **Implement proper error handling** with consistent error formats
5. **Add authentication where needed** to protect sensitive endpoints
6. **Include rate limiting** to prevent abuse
7. **Use middleware consistently** for cross-cutting concerns
8. **Document expected request/response formats**

## When to Use This Template

- Creating new API endpoints from scratch
- Standardizing existing endpoint implementations
- Building RESTful web services
- Implementing CRUD operations for resources
- Adding validation and security to existing endpoints
