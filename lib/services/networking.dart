import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);

  String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String apiData = response.body;

      return jsonDecode(apiData);
    } else {
      print(response.statusCode);
    }
  }
}
