import 'package:http/http.dart' as http;

class NetworkHelper {
  String uri;
  NetworkHelper(String uri) {
    this.uri = uri;
  }

  Future<dynamic> getData() async {
    http.Response httpResponse = await http.get(uri);
    if (httpResponse.statusCode == 200) {
      String data = httpResponse.body;
      return data;
    } else {
      print('non 200 response ' + httpResponse.statusCode.toString());
    }
  }
}
