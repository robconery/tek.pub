---
title: "Query Optimization Template"
api: "/api/query-optimization"
layout: code_page
---

This template guides you through optimizing database queries for better performance, including index strategies, query rewriting, and performance monitoring approaches.

## Sample Prompt

```
Optimize database queries for an e-commerce application:
- Analyze slow product search queries with full-text search optimization
- Optimize order history queries with proper indexing strategies
- Improve customer dashboard queries with denormalization approaches
- Implement query caching for frequently accessed data
- Add database monitoring to identify performance bottlenecks
- Create query execution plans and performance baselines
```

## What This Template Covers

- **Query analysis** including execution plans and performance profiling
- **Index optimization** with strategy selection and maintenance considerations
- **Query rewriting** techniques for improved performance and readability
- **Caching strategies** at database and application levels
- **Database design** improvements including normalization and denormalization
- **Performance monitoring** with automated query analysis and alerting

## Best Practices

1. **Use database profiling tools** to identify slow queries and bottlenecks
2. **Create appropriate indexes** based on query patterns and access frequency
3. **Avoid N+1 query problems** with eager loading and batch operations
4. **Use query caching** strategically for frequently accessed, stable data
5. **Optimize joins** with proper index selection and query structure
6. **Monitor query performance** continuously with automated alerts
7. **Consider read replicas** for read-heavy workloads and scaling
8. **Regular maintenance** including index rebuilding and statistics updates

## When to Use This Template

- Improving application performance by optimizing database interactions
- Scaling applications that are experiencing database bottlenecks
- Implementing new features that require complex data queries
- Addressing performance issues identified through monitoring and profiling
- Preparing databases for increased load or data volume growth
