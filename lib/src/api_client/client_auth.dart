import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/dio_factory.dart';

class ClientAuth {
  static Future<String> getAuthToken(
      String baseUrl, String email, String password) async {
    final client = DioFactory.createPublicClient(apiBaseUrl: baseUrl);
    final data = {
      "Email": email,
      "Password": base64Encode(utf8.encode(password))
    };
    try {
      final authRes = await client.post("/api/token/create", data: data);
      return authRes.data;
    } on DioError catch (e) {
      print(e.message);
      return "";
    } on Exception catch (ex) {
      print(ex);
      return "";
    }
  }
}
