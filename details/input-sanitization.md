---
title: "Input Sanitization Template"
api: "/api/input-sanitization"
layout: code_page
---

This template helps you implement comprehensive input sanitization and validation to protect applications from security vulnerabilities like SQL injection, XSS, and other input-based attacks.

## Sample Prompt

```
Implement input sanitization for a user registration form:
- Email validation with format checking and domain verification
- Password complexity validation with security requirements
- Username sanitization preventing special characters and SQL injection
- File upload validation with type checking and size limits
- HTML content filtering for user-generated content
- SQL injection prevention for database queries
```

## What This Template Covers

- **Data validation** for different input types and formats
- **SQL injection prevention** through parameterized queries and escaping
- **Cross-site scripting (XSS) protection** with proper encoding and filtering
- **File upload security** including type validation and malware scanning
- **Input length limits** and buffer overflow prevention
- **Character encoding** and normalization for international inputs

## Best Practices

1. **Validate on both client and server side** for complete protection
2. **Use whitelist validation** instead of blacklist approaches when possible
3. **Implement parameterized queries** to prevent SQL injection
4. **Encode output data** appropriately for the context (HTML, URL, JavaScript)
5. **Sanitize file uploads** with strict type and size validation
6. **Use established libraries** rather than custom sanitization code
7. **Log suspicious input attempts** for security monitoring
8. **Regular expression validation** should be carefully designed to avoid ReDoS

## When to Use This Template

- Building forms that accept user input or file uploads
- Implementing APIs that process external data
- Adding security layers to existing applications
- Handling user-generated content like comments or posts
- Processing data from third-party integrations or imports
