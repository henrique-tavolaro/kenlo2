

import 'package:dartz/dartz.dart';
import 'package:kenlo2/infra/models/return_model.dart';
import 'package:kenlo2/main/errors/failure.dart';

abstract class IRepository {
  Future<Either<Failure, ReturnModel>> getItems();
}