# Common Development Prompt Templates

This document contains 50+ tested prompt templates for common development tasks. These templates are designed to provide clear, actionable guidance while maintaining consistency and quality in AI-assisted development work.

You can use these prompts in a few different ways:

 - Individual prompt files. Copy/paste the code you want to work with (the stuff in the `[CODE]` brackets) right into the prompt and off you go.
 - As a simple prompt input with a file reference. Instead of pasting the code in, just add the file(s) as context to Copilot or Claude/Gemini using `@dir/` or `@dir/file.js`.
 - As part of your instructions. The code review template, for example, can be added to your instructions file with the explicit direction of "use this to prompt yourself".

Enjoy!

## Code Review & Analysis

### 1. Code Review Template
```
Review this code for:
- Logic errors and edge cases
- Performance issues
- Security vulnerabilities
- Code style and best practices
- Documentation completeness

[CODE]

Provide specific suggestions with line numbers where applicable.
```

### 2. Security Audit Template
```
Perform a security audit of this code, focusing on:
- Input validation
- Authentication/authorization
- Data sanitization
- Injection vulnerabilities
- Sensitive data exposure

[CODE]
```

### 3. Performance Analysis Template
```
Analyze this code for performance bottlenecks:
- Time complexity
- Space complexity
- Database query efficiency
- Network requests
- Memory leaks

[CODE]

Suggest specific optimizations with benchmarks if possible.
```

## Bug Fixing & Debugging

### 4. Bug Investigation Template
```
I'm experiencing [SPECIFIC_ISSUE]. Here's the relevant code:

[CODE]

Error message: [ERROR_MESSAGE]
Expected behavior: [EXPECTED]
Actual behavior: [ACTUAL]

Help me identify the root cause and provide a fix.
```

### 5. Error Handling Template
```
Add comprehensive error handling to this code:
- Input validation
- Exception catching
- Graceful degradation
- User-friendly error messages
- Logging for debugging

[CODE]
```

### 6. Testing Bug Reproduction Template
```
Create a minimal test case that reproduces this bug:
- Issue: [DESCRIPTION]
- Environment: [DETAILS]
- Steps to reproduce: [STEPS]

Include setup, execution, and cleanup code.
```

## Code Generation & Creation

### 7. Function Implementation Template
```
Implement a function that:
- Purpose: [DESCRIPTION]
- Input parameters: [PARAMS]
- Return value: [RETURN_TYPE]
- Constraints: [CONSTRAINTS]
- Language: [LANGUAGE]

Include type hints, documentation, and basic error handling.
```

### 8. Class Design Template
```
Create a [LANGUAGE] class for [PURPOSE] with:
- Properties: [LIST]
- Methods: [LIST]
- Inheritance: [PARENT_CLASS]
- Design patterns: [PATTERNS]

Follow [LANGUAGE] conventions and include docstrings.
```

### 9. API Endpoint Template
```
Create a REST API endpoint for [PURPOSE]:
- HTTP method: [METHOD]
- Route: [PATH]
- Request body: [SCHEMA]
- Response format: [SCHEMA]
- Authentication: [TYPE]
- Validation rules: [RULES]

Include error handling and status codes.
```

## Testing

### 10. Unit Test Template
```
Write comprehensive unit tests for this function:

[CODE]

Include:
- Happy path scenarios
- Edge cases
- Error conditions
- Boundary values
- Mock dependencies where needed
```

### 11. Integration Test Template
```
Create integration tests for [COMPONENT/FEATURE]:
- Test scenarios: [LIST]
- Dependencies: [LIST]
- Test data setup: [REQUIREMENTS]
- Cleanup procedures: [REQUIREMENTS]

Use [TESTING_FRAMEWORK] and follow project conventions.
```

### 12. Test Data Generation Template
```
Generate realistic test data for:
- Entity: [ENTITY_NAME]
- Fields: [FIELD_LIST]
- Constraints: [CONSTRAINTS]
- Quantity: [NUMBER]

Format as [JSON/SQL/CSV] and ensure data validity.
```

## Documentation

### 13. API Documentation Template
```
Generate comprehensive API documentation for:

[CODE/ENDPOINT]

Include:
- Description and purpose
- Parameters and types
- Request/response examples
- Error codes and messages
- Usage examples
- Rate limiting info
```

### 14. Code Documentation Template
```
Add inline documentation to this code:

[CODE]

Include:
- Function/class descriptions
- Parameter explanations
- Return value details
- Usage examples
- Implementation notes
```

### 15. README Template
```
Create a README.md for this project:
- Project name: [NAME]
- Description: [PURPOSE]
- Technologies: [STACK]
- Features: [LIST]

Include installation, usage, contributing, and license sections.
```

## Database & Data

### 16. Database Schema Template
```
Design a database schema for [PURPOSE]:
- Entities: [LIST]
- Relationships: [DESCRIPTION]
- Constraints: [REQUIREMENTS]
- Indexes: [PERFORMANCE_NEEDS]

Use [DATABASE_TYPE] and include migration scripts.
```

### 17. Query Optimization Template
```
Optimize this database query:

[QUERY]

Focus on:
- Index usage
- Join efficiency
- Subquery optimization
- Query plan analysis

Provide the optimized query with explanation.
```

### 18. Data Migration Template
```
Create a data migration script to:
- Source: [DESCRIPTION]
- Target: [DESCRIPTION]
- Transformations: [LIST]
- Validation rules: [REQUIREMENTS]

Include rollback procedures and data integrity checks.
```

## Architecture & Design

### 19. System Design Template
```
Design a system for [PURPOSE] with:
- Requirements: [FUNCTIONAL_AND_NON_FUNCTIONAL]
- Scale: [USERS/REQUESTS]
- Constraints: [TECHNICAL_AND_BUSINESS]
- Technologies: [PREFERENCES]

Include architecture diagram and component descriptions.
```

### 20. Refactoring Template
```
Refactor this code to improve:
- Maintainability
- Readability
- Performance
- Testability

[CODE]

Preserve existing functionality and provide migration notes.
```

### 21. Design Pattern Template
```
Implement the [PATTERN_NAME] pattern for [USE_CASE]:
- Context: [DESCRIPTION]
- Problem: [ISSUE_TO_SOLVE]
- Solution requirements: [CONSTRAINTS]

Include example usage and benefits explanation.
```

## DevOps & Deployment

### 22. CI/CD Pipeline Template
```
Create a CI/CD pipeline for [PROJECT_TYPE]:
- Source control: [SYSTEM]
- Build steps: [REQUIREMENTS]
- Testing stages: [TYPES]
- Deployment targets: [ENVIRONMENTS]
- Notification requirements: [CHANNELS]

Use [CI_TOOL] and include configuration files.
```

### 23. Docker Configuration Template
```
Create Docker configuration for [APPLICATION]:
- Base image: [IMAGE]
- Dependencies: [LIST]
- Environment variables: [LIST]
- Ports: [NUMBERS]
- Volumes: [MOUNTS]

Include Dockerfile and docker-compose.yml.
```

### 24. Infrastructure as Code Template
```
Create [TOOL] configuration for:
- Resources: [LIST]
- Environment: [PROD/STAGING/DEV]
- Region: [LOCATION]
- Security requirements: [RULES]
- Scaling needs: [PARAMETERS]

Include variables and outputs.
```

## Frontend Development

### 25. React Component Template
```
Create a React component for [PURPOSE]:
- Props interface: [PROPERTIES]
- State requirements: [STATE]
- Event handlers: [EVENTS]
- Styling approach: [CSS/STYLED/MODULE]

Include TypeScript types and proper accessibility.
```

### 26. Form Validation Template
```
Implement form validation for:
- Fields: [LIST_WITH_TYPES]
- Validation rules: [RULES]
- Error display: [APPROACH]
- Submission handling: [REQUIREMENTS]

Use [VALIDATION_LIBRARY] and include accessibility features.
```

### 27. State Management Template
```
Implement state management for [FEATURE] using [REDUX/ZUSTAND/CONTEXT]:
- State shape: [STRUCTURE]
- Actions: [LIST]
- Side effects: [ASYNC_OPERATIONS]
- Persistence: [REQUIREMENTS]

Include type definitions and middleware setup.
```

## Backend Development

### 28. Express Route Template
```
Create Express.js routes for [RESOURCE]:
- CRUD operations: [REQUIRED_OPERATIONS]
- Authentication: [METHOD]
- Validation: [SCHEMA]
- Error handling: [APPROACH]

Include middleware and response formatting.
```

### 29. Database Model Template
```
Create a [ORM] model for [ENTITY]:
- Fields: [LIST_WITH_TYPES]
- Relationships: [ASSOCIATIONS]
- Validations: [RULES]
- Hooks/middleware: [REQUIREMENTS]

Include migration and seed data.
```

### 30. Authentication Template
```
Implement authentication system with:
- Strategy: [JWT/SESSION/OAUTH]
- User model: [FIELDS]
- Password security: [HASHING_METHOD]
- Session management: [APPROACH]
- Protected routes: [MIDDLEWARE]

Include registration, login, and logout flows.
```

## Mobile Development

### 31. React Native Component Template
```
Create a React Native component for [PURPOSE]:
- Platform considerations: [iOS/ANDROID/BOTH]
- Props: [INTERFACE]
- Styling: [APPROACH]
- Navigation: [REQUIREMENTS]

Include platform-specific optimizations.
```

### 32. Mobile API Integration Template
```
Implement mobile API integration for [SERVICE]:
- Endpoints: [LIST]
- Authentication: [METHOD]
- Offline support: [REQUIREMENTS]
- Caching strategy: [APPROACH]
- Error handling: [APPROACH]

Include network state management.
```

## Data Analysis & Processing

### 33. Data Processing Pipeline Template
```
Create a data processing pipeline for [PURPOSE]:
- Input format: [TYPE]
- Transformations: [STEPS]
- Output format: [TYPE]
- Error handling: [APPROACH]
- Performance requirements: [CONSTRAINTS]

Include data validation and monitoring.
```

### 34. Data Visualization Template
```
Create data visualization for [DATASET]:
- Chart type: [TYPE]
- Data source: [SOURCE]
- Interactivity: [REQUIREMENTS]
- Styling: [THEME]
- Responsiveness: [BREAKPOINTS]

Use [LIBRARY] and include accessibility features.
```

## Security

### 35. Input Sanitization Template
```
Implement input sanitization for [INPUT_TYPE]:
- Validation rules: [CONSTRAINTS]
- Sanitization methods: [TECHNIQUES]
- Error responses: [FORMAT]
- Logging requirements: [DETAILS]

Include both client and server-side validation.
```

### 36. HTTPS/TLS Configuration Template
```
Configure HTTPS/TLS for [APPLICATION]:
- Certificate management: [APPROACH]
- Cipher suites: [PREFERENCES]
- HSTS headers: [SETTINGS]
- Certificate pinning: [REQUIREMENTS]

Include security headers and monitoring.
```

## Performance Optimization

### 37. Caching Strategy Template
```
Implement caching for [COMPONENT]:
- Cache type: [MEMORY/REDIS/CDN]
- Cache keys: [STRATEGY]
- TTL settings: [DURATION]
- Invalidation rules: [TRIGGERS]
- Fallback behavior: [APPROACH]

Include cache warming and monitoring.
```

### 38. Database Optimization Template
```
Optimize database performance for [USE_CASE]:
- Query analysis: [SLOW_QUERIES]
- Index strategy: [REQUIREMENTS]
- Connection pooling: [SETTINGS]
- Partitioning: [APPROACH]

Provide before/after performance metrics.
```

## Monitoring & Logging

### 39. Logging Implementation Template
```
Implement comprehensive logging for [APPLICATION]:
- Log levels: [ERROR/WARN/INFO/DEBUG]
- Log format: [STRUCTURED/PLAIN]
- Log destinations: [FILE/DATABASE/SERVICE]
- Sensitive data handling: [APPROACH]
- Log rotation: [STRATEGY]

Include correlation IDs and structured logging.
```

### 40. Monitoring Setup Template
```
Set up monitoring for [SYSTEM]:
- Metrics to track: [LIST]
- Alert conditions: [THRESHOLDS]
- Dashboard requirements: [WIDGETS]
- Notification channels: [METHODS]

Use [MONITORING_TOOL] and include SLA definitions.
```

## Migration & Upgrade

### 41. Legacy Code Migration Template
```
Migrate [OLD_SYSTEM] to [NEW_SYSTEM]:
- Migration strategy: [BIG_BANG/GRADUAL]
- Data mapping: [TRANSFORMATIONS]
- Feature parity: [REQUIREMENTS]
- Rollback plan: [APPROACH]
- Testing strategy: [METHODS]

Include timeline and risk assessment.
```

### 42. Dependency Upgrade Template
```
Upgrade [DEPENDENCY] from [OLD_VERSION] to [NEW_VERSION]:
- Breaking changes: [LIST]
- Code modifications: [REQUIREMENTS]
- Testing strategy: [APPROACH]
- Rollback procedures: [STEPS]

Include compatibility matrix and migration guide.
```

## Configuration Management

### 43. Environment Configuration Template
```
Set up environment configuration for [APPLICATION]:
- Environments: [DEV/STAGING/PROD]
- Configuration sources: [FILES/ENV_VARS/SECRETS]
- Secret management: [APPROACH]
- Configuration validation: [RULES]

Include configuration schema and deployment procedures.
```

### 44. Feature Flag Template
```
Implement feature flags for [FEATURE]:
- Flag types: [BOOLEAN/PERCENTAGE/USER_BASED]
- Targeting rules: [CRITERIA]
- Rollout strategy: [APPROACH]
- Monitoring: [METRICS]

Include flag lifecycle management.
```

## Code Quality & Standards

### 45. Code Style Guide Template
```
Establish code style guide for [LANGUAGE/FRAMEWORK]:
- Naming conventions: [RULES]
- File organization: [STRUCTURE]
- Code formatting: [STANDARDS]
- Documentation requirements: [STANDARDS]
- Linting rules: [CONFIGURATION]

Include automated enforcement setup.
```

### 46. Code Review Checklist Template
```
Create code review checklist for [PROJECT_TYPE]:
- Functionality: [CHECKPOINTS]
- Code quality: [STANDARDS]
- Performance: [CONSIDERATIONS]
- Security: [REQUIREMENTS]
- Documentation: [STANDARDS]

Include reviewer guidelines and approval criteria.
```

## Emergency Response

### 47. Incident Response Template
```
Create incident response procedure for [SYSTEM]:
- Detection methods: [MONITORING]
- Escalation path: [CONTACTS]
- Mitigation steps: [PROCEDURES]
- Communication plan: [CHANNELS]
- Post-incident review: [PROCESS]

Include runbooks and contact information.
```

### 48. Rollback Procedure Template
```
Create rollback procedure for [DEPLOYMENT_TYPE]:
- Rollback triggers: [CONDITIONS]
- Rollback steps: [PROCEDURES]
- Data considerations: [BACKUP/RESTORE]
- Verification steps: [TESTS]
- Communication: [STAKEHOLDERS]

Include automated and manual rollback options.
```

## Integration & APIs

### 49. Third-party Integration Template
```
Integrate with [SERVICE_NAME] API:
- Authentication: [METHOD]
- Rate limiting: [CONSTRAINTS]
- Error handling: [STRATEGY]
- Data synchronization: [APPROACH]
- Fallback behavior: [REQUIREMENTS]

Include SDK usage and webhook handling.
```

### 50. Microservices Communication Template
```
Implement communication between [SERVICE_A] and [SERVICE_B]:
- Communication pattern: [SYNC/ASYNC]
- Message format: [JSON/PROTOBUF]
- Error handling: [STRATEGY]
- Service discovery: [APPROACH]
- Circuit breaker: [CONFIGURATION]

Include retry logic and timeout handling.
```

## Bonus Templates

### 51. Load Testing Template
```
Design load testing for [SYSTEM]:
- Test scenarios: [LIST]
- Load patterns: [RAMP_UP/SPIKE/SUSTAINED]
- Performance targets: [METRICS]
- Infrastructure: [RESOURCES]
- Results analysis: [CRITERIA]

Include test data and environment setup.
```

### 52. Backup & Recovery Template
```
Implement backup and recovery for [SYSTEM]:
- Backup frequency: [SCHEDULE]
- Backup types: [FULL/INCREMENTAL]
- Storage location: [LOCAL/CLOUD]
- Recovery procedures: [STEPS]
- Testing strategy: [APPROACH]

Include RTO/RPO requirements and automation.
```

## Why These Templates Work

These templates are effective because they:

1. **Provide Structure**: Each template includes specific sections that ensure comprehensive coverage of the topic
2. **Use Placeholders**: Bracketed placeholders make it easy to customize for specific use cases
3. **Include Context**: Templates specify the type of information needed for accurate responses
4. **Focus on Outcomes**: Each template is goal-oriented and specifies desired deliverables
5. **Encourage Best Practices**: Templates include considerations for security, performance, and maintainability
6. **Support Iteration**: Templates can be refined based on results and feedback

## Usage Guidelines

- Replace bracketed placeholders with specific information
- Combine templates when working on complex tasks
- Customize templates based on your team's standards and practices
- Add project-specific requirements and constraints
- Use templates as starting points, not rigid requirements

These templates serve as a foundation for consistent, high-quality AI-assisted development work while maintaining flexibility for specific project needs.