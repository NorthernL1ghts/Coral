# Coral Code Signature

### Layout / Style

To maintain code consistency and readability, the following naming conventions are used across the codebase:
- **PascalCase**: Used for method names, e.g., `Run()`, to denote public methods and functions.
- **Public variables**: Named directly without a prefix, e.g., `VarName`, for variables that are intended to be accessible from outside the class.
- **Global variables**: Prefixed with `g_`, e.g., `g_Configuration`, indicating variables that are accessible throughout the application.
- **Private members**: Prefixed with `m_`, e.g., `m_PrivateData`, denoting class-level variables that should not be accessed directly from outside the class.
- **Static variables**: Prefixed with `s_`, e.g., `s_StaticValue`, representing class-level variables that are shared among all instances of the class.
- **Handles**: Prefixed with `h_`, e.g., `h_FileHandle`, used for resources or external references like file handles and database connections.
- **Constants**: Prefixed with `c_`, e.g., `c_MaxValue`, indicating values that remain unchanged throughout the program.
- **Booleans**: Prefixed with `m_`, e.g., `m_IsActive`, used for variables that hold true/false values.
