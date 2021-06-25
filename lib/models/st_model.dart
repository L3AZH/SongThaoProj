import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

class StLocaion {
  double latitude;

  double longtiude;

  String name;

  String country;

  StLocaion(this.latitude, this.longtiude, this.name, this.country);

  StLocaion.fromJson(dynamic json)
      : latitude = json['latitude'],
        longtiude = json['longtiude'],
        name = json['name'],
        country = json['country'];

  Map<String, dynamic> toJson() => {
        'latitude': latitude,
        'longtiude': longtiude,
        'name': name,
        'country': country
      };
}

class ResponseLocationModel {
  List<StLocaion> data;

  ResponseLocationModel(this.data);

   ResponseLocationModel.fromJson(dynamic json)
      : data = json['data'];

  Map<String, dynamic> toJSon() => {'data':data};
}
