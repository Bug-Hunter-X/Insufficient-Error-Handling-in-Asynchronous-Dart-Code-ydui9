```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        return jsonDecode(response.body);
      } catch (e) {
        throw Exception('Failed to decode JSON: $e');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } on SocketException catch (e) {
    throw Exception('Network error: $e');
  } on FormatException catch (e) {
    throw Exception('Invalid JSON format: $e');
  } catch (e) {
    throw Exception('An unexpected error occurred: $e');
  }
}
```