---
title: "Unit Test Template"
api: "/api/unit-test"
layout: code_page
---


This template helps you write comprehensive unit tests that follow testing best practices. It covers different testing frameworks, mocking strategies, and patterns for creating maintainable and reliable test suites.

## Sample Prompt

```
Write comprehensive unit tests for UserService class:
- Test methods: createUser, getUserById, updateUser
- Mock dependencies: UserRepository, EmailService
- Test scenarios: success cases, validation errors, edge cases
- Framework: Jest with TypeScript
- Include parameterized tests and async testing

Follow AAA pattern and test behavior, not implementation.
```


## What This Template Covers

- **Test structure** following AAA (Arrange, Act, Assert) pattern
- **Mocking and stubbing** for isolated unit testing
- **Test data setup** and teardown procedures
- **Edge case testing** and error handling validation
- **Performance testing** for critical functions
- **Parameterized tests** for testing multiple scenarios

## Best Practices

1. **Follow AAA pattern** - Arrange, Act, Assert for clear test structure
2. **Test behavior, not implementation** - Focus on what the code does, not how
3. **Use descriptive test names** - Clearly state what is being tested
4. **Mock external dependencies** - Isolate the unit under test
5. **Test edge cases** - Include boundary conditions and error scenarios
6. **Keep tests independent** - Each test should be able to run in isolation
7. **Use test fixtures** - Set up common test data and scenarios
8. **Assert meaningfully** - Verify the specific behavior you expect

## When to Use This Template

- Writing tests for new functions and classes
- Adding test coverage to existing code
- Setting up test suites for new projects
- Refactoring code with safety net of tests
- Implementing test-driven development (TDD)
- Ensuring code quality and reliability
