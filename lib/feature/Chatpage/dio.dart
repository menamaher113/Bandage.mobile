
import 'package:dio/dio.dart';

class DioApp {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.writesonic.com/v2/business/content/chatsonic',
        receiveDataWhenStatusError: true,
        headers: {
          "Accept" : "*/*",
          "X-Api-Key" : "f2a93051-f94e-4643-b459-ccf1c69f3871"
        }
      ),
    );
  }

  static Future<Response> getData({
    required String url,
  }) async {
    return await dio.get(
      url,
    );
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    return dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    return dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
}