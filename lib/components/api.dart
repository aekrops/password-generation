import 'package:http/http.dart' as http;
import 'dart:developer';

Future<String> fetchPassword(length) async {
  final response = await http.get(Uri.parse(
      "https://makemeapassword.ligos.net/api/v1/pronounceable/plain?c=1&sc=$length"));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load album');
  }
}

Future<String> fetchPINCode(length) async {
  final response = await http.get(Uri.parse(
      "https://makemeapassword.ligos.net/api/v1/pin/plain?c=1&l=$length"));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load album');
  }
}

Future<String> fetchHex(length) async {
  final response = await http.get(Uri.parse(
      "https://makemeapassword.ligos.net/api/v1/hex/plain?c=1&l=$length"));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load album');
  }
}
