import 'package:http/http.dart' as http;

void fetchData() async {
  final response =
      await http.get(Uri.parse('http://todoapp.com:5000/api/data'));
  // Process the response
}
