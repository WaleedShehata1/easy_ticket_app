import 'package:dio/dio.dart';
import 'package:easy_ticket_app/widget/constants.dart';

class DioHelper {
  static Dio? dio;

  static void init() {
    dio = Dio(
      BaseOptions(
          baseUrl: 'https://easyticket.website/api/',
          receiveDataWhenStatusError: true,
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token'
          }),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String lang = 'en',
    required String token,
  }) async {
    dio?.options.headers = {'lang': lang, 'Authorization': 'Bearer $token'};
    return await dio!.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'en',
    String? token,
  }) async {
    dio?.options.headers = {'lang': lang, 'Authorization': 'Bearer $token'};

    return dio!.post(url, queryParameters: query, data: data);
  }

  static Future<Response> postToken({
    required String url,
    String lang = 'en',
  }) async {
    dio?.options.headers = {'lang': lang, 'Authorization': 'Bearer $token'};

    return dio!.post(
      url,
    );
  }
}
