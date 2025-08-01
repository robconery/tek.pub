---
title: "Legacy Code Migration Template"
api: "/api/legacy-code-migration"
layout: code_page
---

This template guides you through safely migrating legacy code to modern architectures, frameworks, or languages while maintaining functionality and minimizing business disruption.

## Sample Prompt

```
Migrate a legacy monolithic application to microservices:
- Analyze existing codebase and identify service boundaries
- Extract user management functionality to independent service
- Implement API gateway for service communication
- Migrate database schema with zero-downtime approach
- Set up monitoring and logging for new architecture
- Plan phased rollout with fallback procedures
```

## What This Template Covers

- **Legacy system analysis** and technical debt assessment
- **Migration strategy planning** with risk mitigation approaches
- **Code refactoring techniques** for modernization without breaking changes
- **Data migration strategies** including schema evolution and synchronization
- **Testing approaches** for validating migration accuracy and completeness
- **Deployment strategies** for minimizing downtime during transitions

## Best Practices

1. **Start with comprehensive documentation** of existing system behavior
2. **Use the strangler fig pattern** for gradual migration approaches
3. **Implement feature flags** to control migration rollout
4. **Maintain backward compatibility** during transition periods
5. **Test extensively** with both automated tests and user acceptance testing
6. **Plan rollback procedures** for each migration phase
7. **Monitor system performance** before, during, and after migration
8. **Train team members** on new technologies and patterns

## When to Use This Template

- Modernizing applications built on outdated technologies or frameworks
- Breaking down monolithic applications into microservices
- Migrating from on-premises to cloud infrastructure
- Updating applications to meet new security or compliance requirements
- Improving system performance and scalability through architectural changes
