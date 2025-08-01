---
title: "CI/CD Pipeline Template"
api: "/api/cicd-pipeline"
layout: code_page
---

This template helps you design and implement robust continuous integration and continuous deployment pipelines. It covers automated testing, build processes, deployment strategies, and monitoring for reliable software delivery.

## Sample Prompt

```
Create a CI/CD pipeline for a Node.js web application:
- Automated testing (unit, integration, e2e) on pull requests
- Docker image building and security scanning
- Multi-environment deployment (staging, production)
- Database migrations and rollback procedures
- Blue-green deployment strategy with health checks
- Monitoring and alerting for deployment failures
```

## What This Template Covers

- **Automated testing integration** with multiple test types and coverage reporting
- **Build and artifact management** including containerization and dependency management
- **Multi-environment deployment** with promotion strategies and approval gates
- **Database migration handling** and rollback procedures
- **Deployment strategies** including blue-green, canary, and rolling deployments
- **Monitoring and observability** for pipeline health and deployment success

## Best Practices

1. **Automate testing at every stage** to catch issues early in the pipeline
2. **Use infrastructure as code** for consistent environment provisioning
3. **Implement proper secret management** for secure credential handling
4. **Design for rollback capabilities** in case of deployment failures
5. **Monitor pipeline performance** and optimize for faster feedback loops
6. **Use feature flags** to decouple deployments from feature releases
7. **Implement proper logging** and observability throughout the pipeline
8. **Test deployment procedures** regularly in non-production environments

## When to Use This Template

- Setting up automated deployment processes for new projects
- Modernizing legacy deployment practices
- Implementing DevOps practices in development teams
- Scaling deployment processes for multiple services
- Ensuring consistent and reliable software delivery
