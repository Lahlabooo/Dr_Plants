import 'package:dio/dio.dart';

class ApiService {
  static final Dio dio = Dio();
  static Future<dynamic> postService({required String message}) async {
    dio.options.headers = {'Content-Type': 'application/json'};
    Response response = await dio.post(
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyALbFlTaCml13rcs9svyeEIU3jx2N3nLCY",
      data: {
        "contents": [
          {
            "parts": [
              {"text": "the response is related to plants  $message "}
            ]
          }
        ]
      },
    );
    return response.data;
  }
}
