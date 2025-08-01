---
title: "React Native Component Template"
api: "/api/react-native-component"
layout: code_page
---

This template helps you create well-structured React Native components with platform-specific optimizations, performance considerations, and mobile-first design patterns.

## Sample Prompt

```
Create a React Native photo gallery component:
- TouchableOpacity grid layout with lazy loading for performance
- Platform-specific styling for iOS and Android differences
- Image caching and compression for efficient memory usage
- Pull-to-refresh functionality with ActivityIndicator
- Modal view for full-screen image viewing with gestures
- Integration with device camera and photo library permissions
```

## What This Template Covers

- **Cross-platform compatibility** with iOS and Android specific considerations
- **Performance optimization** including lazy loading and memory management
- **Native module integration** for accessing device features and APIs
- **Responsive design** for different screen sizes and orientations
- **Gesture handling** and touch interactions optimized for mobile
- **State management** with hooks and context for component communication

## Best Practices

1. **Use FlatList or VirtualizedList** for large data sets to improve performance
2. **Implement platform-specific styling** when necessary for native feel
3. **Optimize images** with appropriate compression and caching strategies
4. **Handle device orientation** and different screen densities properly
5. **Use React.memo and useMemo** for performance optimization
6. **Test on real devices** rather than just simulators for accurate performance
7. **Handle permissions gracefully** with proper error messaging
8. **Follow accessibility guidelines** for inclusive mobile experiences

## When to Use This Template

- Building reusable UI components for React Native applications
- Creating mobile-optimized interfaces with native performance
- Implementing device-specific features like camera or location services
- Developing cross-platform mobile apps with platform-specific adaptations
- Optimizing mobile app performance and user experience
