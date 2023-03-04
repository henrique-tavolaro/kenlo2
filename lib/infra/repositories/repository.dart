

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kenlo2/domain/i_repositories/i_repository.dart';
import 'package:kenlo2/infra/i_datasource/i_remote_datasource.dart';
import 'package:kenlo2/infra/models/return_model.dart';
import 'package:kenlo2/main/errors/failure.dart';

@Injectable(as: IRepository)
class Repository implements IRepository {

  final IRemoteDatasource datasource;

  Repository(this.datasource);

  @override
  Future<Either<Failure, ReturnModel>> getItems() async {
    try {
      final result = await datasource.getItems();

      return right(result);
    } on ServerException catch (e) {
      return left(ServerFailure(message: e.message, code: e.code));
    }
  }
}