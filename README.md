# Unhandled Exception in Asynchronous Network Request

This repository demonstrates a common error in Dart asynchronous programming: failing to properly handle exceptions during network requests using the `http` package.  The `bug.dart` file shows the erroneous code, while `bugSolution.dart` provides a corrected version with robust error handling.

The original code lacks comprehensive exception handling, leading to potential crashes if the network request fails. The solution showcases best practices for handling both HTTP status codes and general exceptions, ensuring more reliable application behavior.