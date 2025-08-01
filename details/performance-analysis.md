---
title: "Performance Analysis Template"
api: "/api/performance-analysis"
layout: code_page
---

This template helps you systematically analyze code for performance issues and identify optimization opportunities. It covers algorithmic complexity, database queries, memory usage, and network efficiency.


## Sample Prompt

```
Analyze this user search function for performance bottlenecks:
- Time complexity of search algorithm
- Database query efficiency
- Memory usage patterns
- Network request optimization
- Potential memory leaks

[Provide your code here or file reference]

Suggest specific optimizations with estimated performance improvements.
```


## What This Template Covers

- **Algorithmic complexity analysis** (Big O notation)
- **Database query optimization** with indexing strategies
- **Memory usage profiling** and leak detection
- **Network request optimization** and caching
- **CPU-intensive operation identification**
- **Bottleneck prioritization** based on impact

## Best Practices

1. **Profile before optimizing** - Measure actual performance bottlenecks
2. **Focus on algorithmic improvements** - Better algorithms often give bigger gains
3. **Optimize database queries** - Use proper indexes and query patterns
4. **Manage memory usage** - Process large datasets in chunks
5. **Cache frequently accessed data** - Reduce redundant computations
6. **Use parallel processing** - Leverage concurrent operations
7. **Monitor in production** - Track performance metrics continuously
8. **Consider trade-offs** - Balance speed vs. memory vs. complexity

## When to Use This Template

- Investigating slow application performance
- Optimizing database-heavy operations
- Reducing memory usage in data processing
- Improving API response times
- Scaling applications for higher loads
- Code review for performance considerations
