import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
  Future<dynamic> post({
    required String url,
    required dynamic data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    dio.options.headers = headers;
    Response response = await dio.post(
      url,
      data: data,
      queryParameters: queryParameters,
    );
    return response.data;
  }
}
