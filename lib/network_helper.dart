import 'package:http/http.dart' as http;
import 'dart:convert';
import 'constants.dart';

class NetworkHelper {
  String currencyName;
  NetworkHelper();

  Future getData(String selectedCoin, String selectedCurrency) async {
    String url =
        '$kCoinApiUrl/$selectedCoin/$selectedCurrency/?apikey=$kApiKey';
    print('url: $url');

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
