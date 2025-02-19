# Insufficient Error Handling in Asynchronous Dart Code

This example shows a Dart program with insufficient error handling during an asynchronous network request.  The code fetches JSON data and handles potential errors, but it could be improved to provide more detailed and helpful error messages for both developers and users.

## Bug

The `fetchData` function lacks specific error handling.  While it catches exceptions, it only prints a generic error message to the console.  This makes debugging difficult and provides poor user experience.

## Solution

The solution provides more specific error handling, including differentiating between network errors and JSON decoding errors, and providing more informative error messages.