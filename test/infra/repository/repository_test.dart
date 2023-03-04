

import 'package:dartz/dartz.dart';
import 'package:dartz_test/dartz_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kenlo2/external/datasource/remote_datasource.dart';
import 'package:kenlo2/infra/models/return_model.dart';
import 'package:kenlo2/infra/repositories/repository.dart';
import 'package:kenlo2/main/errors/failure.dart';
import 'package:mocktail/mocktail.dart';

import '../../external/datasource/remote_datasource_test.dart';

class MockDatasource extends Mock implements RemoteDatasource {}

void main(){
  final datasource = MockDatasource();

  late Repository sut;

  setUp((){
    sut = Repository(datasource);
  });

  group('get items repository', () {
    test('should return right with items', () async {
      when(() => datasource.getItems()).thenAnswer((_) async => lista);
      final result = await sut.getItems();

      expect(result, isRight);
      expect(result, isRightThat(lista));
      expect(result.fold(id, id), isA<ReturnModel>());
    });

    test('should return left with failure', () async {
      when(() => datasource.getItems())
          .thenThrow(const ServerException(message: '', code: ''));

      final result = await sut.getItems();

      expect(result.fold(id, id), isA<ServerFailure>());
      expect(result, isLeft);
    });

  });
}