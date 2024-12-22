```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      print('Data fetched successfully: $jsonData');
    } else {
      // Handle specific HTTP error codes
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } on SocketException catch (e) {
    // Handle network errors
    print('Network error: $e');
  } on FormatException catch (e) {
    //Handle JSON decoding errors
    print('JSON decoding error: $e');
  } catch (e) {
    // Handle other exceptions
    print('An unexpected error occurred: $e');
    // Optionally rethrow the exception to higher level handlers
    //rethrow;
  }
}
```