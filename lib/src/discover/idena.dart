import 'dart:async';
import 'package:http/http.dart' as http;

import '../discover.dart';

class Idena implements Scanner {
  Idena(this.url);
  Idena.withDefaultUrl() : url = Idena.defaultUrl;

  static const String defaultUrl = 'https://api.idena.io/api/';
  static const Map<String, String> defaultHeaders = {
    'User-Agent': 'Dart bitcoin_bip44 library'
  };

  final String url;

  @override
  Future<bool> present(String address) async {
    var response =
        await http.get('$url/Address/$address', headers: defaultHeaders);
    return response.statusCode == 200;
  }
}
