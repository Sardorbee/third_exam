import 'dart:io';

import 'package:flutter/material.dart';
import 'package:third_exam/services/model/universal.dart';
import 'package:http/http.dart' as http;
import 'package:third_exam/services/network/api_utils.dart';

class ApiProvider {
  static Future<UniversalData> getWeatherOneCallData({
    required double lat,
    required double long,
  }) async {
    String url = '';
    String apiKey = '';
    Uri uri = Uri.https(
      url,
      // "/data/2.5/onecall",
      // {
      //   "appid": apiKey,
      //   "lat": lat.toString(),
      //   "lon": long.toString(),
      //   "exclude": "minutely,current",
      //   "units": "metric",
      // },
    );

    try {
      http.Response response = await http.get(uri);
      if (response.statusCode == HttpStatus.ok) {
        return UniversalData(
            // data: OneCallData.fromJson(jsonDecode(response.body))
            );
      }
      return handleHttpErrors(response);
    } on SocketException {
      return UniversalData(
          error: "Internet bilan ulanishda XATOLIK sodir bo'ldi!!");
    } on FormatException {
      return UniversalData(error: "Format Error!");
    } catch (err) {
      debugPrint("ERROR:$err. ERROR TYPE: ${err.runtimeType}");
      return UniversalData(error: err.toString());
    }
  }
}
