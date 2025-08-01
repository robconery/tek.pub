---
title: "Function Implementation Template"
api: "/api/function-implementation"
layout: code_page
---

This template helps you implement well-designed functions with proper parameter handling, error management, documentation, and testing considerations for maintainable and reliable code.

## Sample Prompt

```
Implement a function to process payment transactions:
- Input validation for payment amount, currency, and payment method
- Error handling for network failures and invalid payment data
- Retry logic with exponential backoff for transient failures
- Logging for audit trails and debugging
- Return type with success/failure status and detailed error information
- Unit tests covering success cases, edge cases, and error scenarios
```

## What This Template Covers

- **Function design principles** including single responsibility and clear interfaces
- **Parameter validation** and type checking for robust input handling
- **Error handling strategies** with appropriate exception types and recovery mechanisms
- **Return value design** with consistent and informative response structures
- **Performance considerations** including optimization and resource management
- **Testing strategies** with comprehensive coverage of functionality and edge cases

## Best Practices

1. **Follow single responsibility principle** with focused function purposes
2. **Validate inputs early** and provide clear error messages for invalid data
3. **Use descriptive function names** that clearly indicate purpose and behavior
4. **Handle errors gracefully** with appropriate exception handling and logging
5. **Document function contracts** with clear parameter and return value descriptions
6. **Write comprehensive tests** covering normal operation and edge cases
7. **Consider performance implications** especially for frequently called functions
8. **Keep functions pure** when possible to improve testability and predictability

## When to Use This Template

- Implementing new business logic functions
- Refactoring existing functions for better maintainability
- Creating utility functions and helper methods
- Teaching function design principles to development teams
- Establishing coding standards for function implementation
