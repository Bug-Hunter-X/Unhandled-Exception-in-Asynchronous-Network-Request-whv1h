```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null; // Or throw an exception depending on your needs
    }
  } catch (e) {
    print('Error: $e');
    return null; // Or throw a custom exception for better error handling
  }
}
```