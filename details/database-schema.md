---
title: "Database Schema Template"
api: "/api/database-schema"
layout: code_page
---

## Sample Prompt

```
Design a database schema for an e-commerce platform:
- Entities: users, products, categories, orders, order_items, addresses
- Relationships: users have many orders and addresses, products belong to categories, orders contain multiple products
- Constraints: email uniqueness, positive prices, valid order statuses
- Indexes: optimize for user lookups, product searches, and order queries

Use PostgreSQL and include migration scripts.
```

This template helps you design robust database schemas with proper relationships, constraints, and performance considerations. It ensures your database structure is scalable, maintainable, and follows industry best practices.

## What This Template Covers

- **Entity relationship design** with proper normalization
- **Data types and constraints** for data integrity
- **Indexing strategies** for optimal performance
- **Migration scripts** for version control
- **Security considerations** including access controls
- **Backup and recovery planning**

## Best Practices

1. **Normalize appropriately** - Don't over-normalize or under-normalize
2. **Use proper data types** - Choose the most appropriate type for each field
3. **Implement constraints** - Ensure data integrity at the database level
4. **Plan for scalability** - Consider partitioning and sharding strategies
5. **Index strategically** - Create indexes based on query patterns
6. **Version your migrations** - Use sequential migration files
7. **Document relationships** - Clearly define foreign key relationships
8. **Consider security** - Implement proper access controls and encryption

## When to Use This Template

- Designing new application databases
- Refactoring existing database structures
- Planning data migration strategies
- Creating development and testing environments
- Documenting database architecture for teams
