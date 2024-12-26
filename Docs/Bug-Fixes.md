# BUG FIXES

# 1. Resolving the Error: "A project with an output type of a class library cannot be started directly"

## Problem
The error *"A project with an output type of a class library cannot be started directly"* occurs in Visual Studio when you attempt to run a **class library** project. This happens because:
- Class libraries do not have an executable entry point (like a `Main` method).
- They are designed to be referenced by other executable projects (e.g., console apps or test projects).

For example, if you are working with **Coral**, a C++/C# wrapper around the .NET CoreCLR, this error is expected since Coral is a library, not a standalone application.

---

## Solution
To fix this issue and use/debug your class library, follow these steps:

### 1. **Create a New Executable Project**
   - In Visual Studio, right-click on your solution in the Solution Explorer and select **Add** → **New Project**.
   - Choose a project type, such as:
     - **Console Application** for running code.
     - **Unit Test Project** for testing the library.

### 2. **Reference the Class Library**
   - Right-click on the newly created project and select **Add** → **Project Reference**.
   - Select the class library (e.g., Coral) and click **OK**.

### 3. **Write Test or Usage Code**
   - Open the `Program.cs` file (or equivalent entry point in your project).
   - Add code to test or use the functionality exposed by the Coral class library. For example:

     ```csharp
     using CoralNamespace; // Replace with the namespace of your Coral library

     class Program
     {
         static void Main(string[] args)
         {
             // Example usage of the Coral library
             var coralInstance = new CoralClass();
             coralInstance.DoSomething();
         }
     }
     ```

### 4. **Set the Executable Project as the Startup Project**
   - In Solution Explorer, right-click the new project and select **Set as Startup Project**.
   - This ensures that Visual Studio will build and run the executable project instead of the class library.

### 5. **Run and Debug**
   - Press `F5` (Run) or `Ctrl+F5` (Start Without Debugging) to execute the project.
   - The Coral library will now be loaded and used by the executable.

---

## NOTE (NorthernL1ghts)
This behavior is expected when working with class libraries like Coral, which act as reusable components rather than standalone applications. Always pair a class library with an executable or test project for development and debugging purposes.
