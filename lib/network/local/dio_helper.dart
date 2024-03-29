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
    Map<String, dynamic>? data,
    String lang = 'en',
    String? token,
  }) async {
    dio?.options.headers = {
      'lang': lang,
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json'
    };
    return await dio!.get(url, queryParameters: query);
  }

  static Future<Response> getTicket({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    String lang = 'en',
  }) async {
    dio?.options.headers = {'lang': lang, 'Content-Type': 'application/json'};
    return await dio!.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'en',
    String? token,
  }) async {
    dio?.options.headers = {
      'lang': lang,
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json'
    };

    return dio!.post(url, queryParameters: query, data: data);
  }

  static Future<Response> getDataTicket({
    required String url,
    Map<String, dynamic>? data,
    String lang = 'en',
  }) async {
    dio?.options.headers = {
      'lang': lang,
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json'
    };

    return dio!.get(
      url,
    );
  }

  static Future<Response> postToken({
    required String url,
    String lang = 'en',
  }) async {
    dio?.options.headers = {
      'lang': lang,
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json'
    };

    return dio!.post(
      url,
    );
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'en',
    String? token,
  }) async {
    dio?.options.headers = {
      'lang': lang,
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json'
    };

    return dio!.put(url, queryParameters: query, data: data);
  }
}
