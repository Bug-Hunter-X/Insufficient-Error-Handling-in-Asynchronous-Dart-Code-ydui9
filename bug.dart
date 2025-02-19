```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Successfully fetched data
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error (non-200 status code)
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network request or JSON decoding
    print('Error: $e');
    // Consider rethrowing the exception or handling it based on app requirements
    rethrow; // Rethrows the exception to be handled at a higher level
  }
}
```