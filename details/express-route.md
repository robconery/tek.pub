---
title: "Express Route Template"
api: "/api/express-route"
layout: code_page
---

This template helps you create robust Express.js routes with proper middleware, validation, error handling, and security practices. It follows RESTful conventions and includes comprehensive request/response handling.

## Sample Prompt

```
Create Express.js routes for a blog API:
- GET /api/posts - list posts with pagination and filtering
- GET /api/posts/:id - get single post with comments
- POST /api/posts - create new post (authenticated)
- PUT /api/posts/:id - update post (authenticated, author only)
- DELETE /api/posts/:id - delete post (authenticated, author only)

Include middleware for authentication, validation, and error handling.
```

## What This Template Covers

- **RESTful route design** with proper HTTP methods and status codes
- **Middleware integration** for authentication, validation, and logging
- **Request validation** using express-validator or Joi
- **Error handling** with custom error classes and middleware
- **Security practices** including rate limiting and input sanitization
- **Documentation** with clear route descriptions and examples

## Best Practices

1. **Use proper HTTP status codes** for different response types
2. **Implement comprehensive validation** for all inputs
3. **Add authentication and authorization** where needed
4. **Include rate limiting** to prevent abuse
5. **Use middleware consistently** for cross-cutting concerns
6. **Handle errors gracefully** with meaningful messages
7. **Document all routes** with clear examples
8. **Follow RESTful conventions** for predictable APIs

## When to Use This Template

- Building REST APIs with Express.js
- Creating CRUD operations for resources
- Implementing authentication-protected routes
- Adding validation and error handling to existing routes
- Standardizing API route structure across projects
