import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planta/Core/Utils/Api_Service.dart';
import 'package:planta/Core/Utils/Error/Error.dart';
import 'package:planta/Features/Scan/Data/repos/Scan_Repo.dart';

class ScanRepoImpl implements ScanRepo {
  final ApiService apiService;
  final FormData formData = FormData();
  late String fileName;
  ScanRepoImpl(this.apiService);
  @override
  Future<Either<Failure, dynamic>> getPlantStateINfo(
      {required File image}) async {
    try {
      fileName = image.path.split('/').last;
      formData.files.add(MapEntry(
        'image', // 'file' is the key name expected by the API for each file
        await MultipartFile.fromFile(
          image.path,
          filename: fileName,
        ),
      ));
      var data = await apiService.post(
        url: 'https://plant-disease-api-otlc.onrender.com/predict',
        data: formData,
        headers: {
          'Content-Type': 'multipart/form-data',
          'Accept': 'application/json',
        },
      );
      return right(data);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(
          ServicesError.fromDioExeption(e),
        );
      }
      return left(
        ServicesError(e.toString()),
      );
    }
  }
}
