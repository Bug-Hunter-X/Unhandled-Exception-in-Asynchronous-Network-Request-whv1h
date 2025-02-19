```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle non-200 status codes, such as throwing an exception
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, such as network errors
    print('Error fetching data: $e');
    // Consider rethrowing or providing a default value
    rethrow; // Re-throw the exception to be handled further up the call stack
  }
}
```