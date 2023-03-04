import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kenlo2/infra/models/return_model.dart';
import 'package:kenlo2/main/errors/failure.dart';

import '../i_repositories/i_repository.dart';

abstract class IGetItemUseCase {
  Future<Either<Failure, ReturnModel>> call();
}

@Injectable(as: IGetItemUseCase)
class GetItemsUseCase implements IGetItemUseCase {
  final IRepository repository;

  GetItemsUseCase(this.repository);

  @override
  Future<Either<Failure, ReturnModel>> call() {
    return repository.getItems();
  }
}
