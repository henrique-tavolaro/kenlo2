

import 'package:dartz/dartz.dart';
import 'package:dartz_test/dartz_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kenlo2/domain/use_cases/get_items_use_case.dart';
import 'package:kenlo2/infra/models/return_model.dart';
import 'package:kenlo2/infra/repositories/repository.dart';
import 'package:kenlo2/main/errors/failure.dart';
import 'package:mocktail/mocktail.dart';

import '../../external/datasource/remote_datasource_test.dart';

class MockRepository extends Mock implements Repository {}

void main() {
  final repository = MockRepository();

  late GetItemsUseCase sut;

  setUp(() {
    sut = GetItemsUseCase(repository);
  });

  group('get items use case', (){
    test('should return right with return model', () async {
      when(() => repository.getItems()).thenAnswer((_) async =>
          const Right(lista));


      final result = await sut.call();

      expect(result, isRight);
      expect(result, isRightThat(lista));
      expect(result.fold(id, id), isA<ReturnModel>());
    });

    test('should return left with a failure', () async {
      when(() => repository.getItems()).thenAnswer(
            (_) async => const Left(
          ServerFailure(message: '', code: ''),
        ),
      );

      final result = await sut.call();

      expect(result.fold(id, id), isA<ServerFailure>());
      expect(result, isLeft);
    });



  });
}