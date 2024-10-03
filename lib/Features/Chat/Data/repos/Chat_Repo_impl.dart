import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planta/Core/Utils/Api_Service.dart';
import 'package:planta/Core/Utils/Error/Error.dart';
import 'package:planta/Features/Chat/Data/repos/Chat_Repo.dart';

 class ChatRepoIMpl implements ChatRepo {
  final ApiService apiService;
   ChatRepoIMpl(this.apiService);
    final url = "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyALbFlTaCml13rcs9svyeEIU3jx2N3nLCY" ;
   final headers = {'Content-Type': 'application/json'};
   @override
  Future<dynamic> getMessages({required String message}) async{

      var response = await apiService.post(
              url: url,
              data: {
                "contents": [
                  {
                    "parts": [
                      {"text": "the response is related to plants $message"}
                    ]
                  }
                ]
              },
            headers: headers
          );
      return response;
  }
}
