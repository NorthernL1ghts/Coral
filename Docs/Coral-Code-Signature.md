# Coral Code Signature

### Introduction
Welcome to the Coral project! This document provides a comprehensive guide to the coding standards and conventions used across the Coral codebase to ensure consistency and readability.

#### Technologies Used
- **Primary Language**: C++
- **Additional Languages**: C# for internal calls and C for other components.
- **Build System**: 'Premake', utilizing Lua scripts for cross-platform builds (Linux/MacOS and Windows).

### Layout / Style

To maintain code consistency and readability, we adhere to the following naming conventions across the codebase:

- **PascalCase**: Used for method names, denoting public methods and functions. e.g., `Run()`.
- **Public Variables**: Named directly without a prefix, indicating variables accessible from outside the class. e.g., `VarName`.
- **Global Variables**: Prefixed with `g_`, indicating variables accessible throughout the application. e.g., `g_Configuration`.
- **Private Members**: Prefixed with `m_`, denoting class-level variables that should not be accessed directly from outside the class. e.g., `m_PrivateData`.
- **Static Variables**: Prefixed with `s_`, representing class-level variables shared among all instances of the class. e.g., `s_StaticValue`.
- **Handles**: Prefixed with `h_`, used for resources or external references like file handles and database connections. e.g., `h_FileHandle`.
- **Constants**: Prefixed with `c_`, indicating values that remain unchanged throughout the program. e.g., `c_MaxValue`.
- **Booleans**: Prefixed with `m_`, used for variables that hold true/false values. e.g., `m_IsActive`.

### Code Quality and Best Practices

- **Code Comments**: Ensure that all complex logic is well-documented. Use comments to explain the intent and functionality of the code, especially for non-obvious implementations.
- **Error Handling**: Implement robust error handling to gracefully manage unexpected conditions. Use try-catch blocks in appropriate places, and log errors for future debugging.
- **Unit Testing**: Write unit tests for all critical components. Ensure that tests cover edge cases and validate the expected behavior of the code.
- **Code Reviews**: Conduct regular code reviews to maintain quality. Encourage feedback and discussions to continually improve the codebase.

### Version Control
- **Branching Strategy**: Follow a clear branching strategy, such as GitFlow, to manage features, bug fixes, and releases. Maintain a clean and organized commit history.

### Continuous Integration/Continuous Deployment (CI/CD)
- **Build Automation**: Utilize CI/CD pipelines to automate the build process, ensuring that code is tested and validated before deployment.
- **Code Coverage**: Monitor code coverage metrics and aim to achieve a high level of test coverage to ensure code reliability.

### Collaboration and Contribution
- **Coding Style Guide**: Refer to the coding style guide for language-specific conventions and best practices. Ensure that all contributions adhere to these guidelines.
- **Pull Request Process**: Follow a standardized pull request process to review and merge code changes. Provide constructive feedback and ensure that code meets quality standards before merging.

By adhering to these guidelines, we aim to maintain a high-quality, consistent codebase that is easy to read, understand, and maintain.
