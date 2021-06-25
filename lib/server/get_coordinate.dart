
import 'package:client/models/forecast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

String apiKey = "e2460a0b50f5adca4be9d67dca3d2347";


Future<String> getCoordinate(String name) async {
  final response = await http.get(
      "http://api.positionstack.com/v1/forward?access_key=e2460a0b50f5adca4be9d67dca3d2347&query=$name");
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception(
        'Failed to fetch data from API. HTTP response code ${response.statusCode}');
  }
}
