import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:planta/Core/Utils/Error/Error.dart';

abstract class ScanRepo {
  Future<Either<Failure, dynamic>> getPlantStateINfo({required File image});
}
