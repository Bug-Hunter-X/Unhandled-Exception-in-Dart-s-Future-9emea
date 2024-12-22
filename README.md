# Unhandled Exception in Dart's Future

This example demonstrates a common error handling pattern in Dart, particularly with asynchronous operations using `Future`.  The code attempts to fetch data from an API, but the exception handling can be improved.  The `catch` block currently only prints the error message.  In a production environment, more robust handling is needed.  The `bugSolution.dart` file provides a more robust solution.

## Bug

The primary issue lies in the lack of specific exception handling.  The general `catch (e)` catches any exception, making it difficult to pinpoint the root cause of failures.  More detailed error handling improves debugging and provides better feedback to users.  It also currently doesn't handle the case of no internet connection.