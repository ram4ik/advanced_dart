import 'package:http/http.dart' as http;

main(List<String> args) async {
  
  var url = 'http://httpbin.org/post';
  var response = await http.post(url, body: 'name=Dart&color=blue');

  print('Response status ${response.statusCode}');
  print('REsponse Body ${response.body}');
}