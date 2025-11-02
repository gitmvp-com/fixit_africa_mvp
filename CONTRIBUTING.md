# Contributing to FixIt Africa MVP

Thank you for your interest in contributing to FixIt Africa MVP! This document provides guidelines and instructions for contributing.

## Code of Conduct

We expect all contributors to:

- Be respectful and inclusive
- Provide constructive feedback
- Focus on what is best for the community
- Show empathy towards other community members

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates.

**When reporting a bug, include:**

- A clear and descriptive title
- Steps to reproduce the issue
- Expected behavior
- Actual behavior
- Screenshots (if applicable)
- Device/OS information
- Flutter version
- Relevant logs

**Example:**

```markdown
**Title:** Login button not responsive on Android 12

**Steps to Reproduce:**
1. Open the app on Android 12
2. Navigate to login screen
3. Enter credentials
4. Tap login button

**Expected:** Button should trigger login
**Actual:** Nothing happens

**Device:** Samsung Galaxy S21, Android 12
**Flutter:** 3.6.0
```

### Suggesting Enhancements

Enhancement suggestions are welcome! Please provide:

- Clear description of the feature
- Use case and benefits
- Mockups or examples (if applicable)
- Implementation suggestions

### Pull Requests

1. **Fork the repository**
   ```bash
   git clone https://github.com/your-username/fixit_africa_mvp.git
   cd fixit_africa_mvp
   ```

2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make your changes**
   - Follow the coding standards
   - Add tests if applicable
   - Update documentation

4. **Test your changes**
   ```bash
   flutter test
   flutter analyze
   ```

5. **Commit your changes**
   ```bash
   git add .
   git commit -m "feat: add your feature description"
   ```

6. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

7. **Create a Pull Request**
   - Go to the original repository
   - Click "New Pull Request"
   - Select your branch
   - Fill in the PR template

## Coding Standards

### Dart/Flutter Style Guide

Follow the [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)

**Key Points:**

1. **Naming Conventions**
   ```dart
   // Classes: UpperCamelCase
   class MechanicProfileScreen { }

   // Variables: lowerCamelCase
   String mechanicName;

   // Constants: lowerCamelCase
   const double defaultPadding = 16.0;

   // Files: snake_case
   // mechanic_profile_screen.dart
   ```

2. **Formatting**
   ```bash
   # Format all files
   flutter format .
   ```

3. **Code Organization**
   ```dart
   // 1. Imports
   import 'package:flutter/material.dart';
   import '../../core/app_export.dart';

   // 2. Class definition
   class MyWidget extends StatelessWidget {
     // 3. Constructor
     const MyWidget({super.key});

     // 4. Properties
     final String title;

     // 5. Methods
     @override
     Widget build(BuildContext context) {
       return Container();
     }

     // 6. Private methods
     Widget _buildCustomWidget() {
       return Container();
     }
   }
   ```

4. **Comments**
   ```dart
   /// Documentation comments for public APIs
   /// 
   /// Provides detailed information about the class/method
   class MechanicService {
     // Regular comments for implementation details
     void bookService() {
       // TODO: Implement booking logic
     }
   }
   ```

### Widget Guidelines

1. **Prefer `const` constructors**
   ```dart
   const Text('Hello')  // Good
   Text('Hello')        // Avoid
   ```

2. **Extract reusable widgets**
   ```dart
   // Good
   Widget _buildHeader() {
     return Container(...);
   }

   // In build method
   _buildHeader()
   ```

3. **Use descriptive names**
   ```dart
   // Good
   Widget _buildMechanicCard()

   // Avoid
   Widget _buildCard()
   ```

### File Organization

```
lib/presentation/my_screen/
├── my_screen.dart          # Main screen widget
├── widgets/               # Screen-specific widgets
│   ├── custom_widget.dart
│   └── another_widget.dart
└── my_screen_controller.dart  # Optional: state management
```

## Git Commit Messages

Follow [Conventional Commits](https://www.conventionalcommits.org/)

**Format:**
```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation
- `style`: Code style (formatting)
- `refactor`: Code refactoring
- `test`: Adding tests
- `chore`: Maintenance tasks

**Examples:**
```bash
feat(auth): add Google Sign-In support

fix(booking): resolve date picker crash on iOS

docs(readme): update installation instructions

refactor(dashboard): extract widgets for better reusability

test(services): add unit tests for SupabaseService

chore(deps): update Flutter to 3.6.0
```

## Pull Request Template

When creating a PR, include:

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## How Has This Been Tested?
- [ ] Unit tests
- [ ] Widget tests
- [ ] Manual testing on Android
- [ ] Manual testing on iOS

## Checklist
- [ ] Code follows style guidelines
- [ ] Self-review completed
- [ ] Comments added for complex code
- [ ] Documentation updated
- [ ] No new warnings
- [ ] Tests added/updated
- [ ] All tests passing

## Screenshots (if applicable)
[Add screenshots]

## Related Issues
Fixes #[issue number]
```

## Testing

### Writing Tests

1. **Unit Tests**
   ```dart
   // test/services/supabase_service_test.dart
   import 'package:flutter_test/flutter_test.dart';

   void main() {
     group('SupabaseService', () {
       test('should initialize correctly', () {
         // Test implementation
       });
     });
   }
   ```

2. **Widget Tests**
   ```dart
   // test/presentation/dashboard_test.dart
   import 'package:flutter_test/flutter_test.dart';

   void main() {
     testWidgets('Dashboard displays welcome message', (tester) async {
       await tester.pumpWidget(MyApp());
       expect(find.text('Welcome Back!'), findsOneWidget);
     });
   }
   ```

### Running Tests

```bash
# All tests
flutter test

# Specific test file
flutter test test/services/supabase_service_test.dart

# With coverage
flutter test --coverage
```

## Documentation

### Code Documentation

```dart
/// Fetches mechanic details from the database
///
/// [mechanicId] The unique identifier for the mechanic
/// 
/// Returns a [Mechanic] object if found, null otherwise
/// 
/// Throws [SupabaseException] if the query fails
Future<Mechanic?> getMechanic(String mechanicId) async {
  // Implementation
}
```

### README Updates

When adding features, update:
- Feature list in README.md
- FEATURES.md with detailed description
- ARCHITECTURE.md if structure changes

## Project Structure

When adding new features:

1. **New Screen**
   ```
   lib/presentation/new_screen/
   ├── new_screen.dart
   └── widgets/
   ```

2. **New Service**
   ```
   lib/services/new_service.dart
   ```

3. **New Model**
   ```
   lib/models/new_model.dart
   ```

4. **Add Route**
   ```dart
   // lib/routes/app_routes.dart
   static const String newScreen = '/new_screen';
   ```

## Questions?

If you have questions:

1. Check existing documentation
2. Search closed issues
3. Create a new issue with the "question" label
4. Review the parent repository: [jolems123/fixit_africa](https://github.com/jolems123/fixit_africa)

## Recognition

Contributors will be:
- Listed in CONTRIBUTORS.md
- Mentioned in release notes
- Acknowledged in the README

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

Thank you for contributing to FixIt Africa MVP! 🚀
