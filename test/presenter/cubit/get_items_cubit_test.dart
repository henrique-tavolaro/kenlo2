import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kenlo2/domain/use_cases/get_items_use_case.dart';
import 'package:kenlo2/main/errors/failure.dart';
import 'package:kenlo2/presenter/cubit/get_items_cubit.dart';
import 'package:mocktail/mocktail.dart';

import '../../external/datasource/remote_datasource_test.dart';

class MockGetItemsUseCase extends Mock implements GetItemsUseCase {}

void main() {
  final useCase = MockGetItemsUseCase();

  late GetItemsCubit cubit;

  setUp(() {
    cubit = GetItemsCubit(useCase);
  });

  group('get items cubit', () {
    test('should emit initial state', () async {
      expect(cubit.state, const GetItemsState.initial());
    });

    blocTest<GetItemsCubit, GetItemsState>(
      'should emit return model',
      setUp: () {
        when(() => useCase()).thenAnswer(
          (_) async => const Right(lista),
        );
      },
      build: () => cubit,
      act: (cubit) => cubit.getItems(),
      expect: () => [
        const GetItemsState.loading(),
        const GetItemsState.loaded(returnModel: lista),
      ],
    );

    blocTest<GetItemsCubit, GetItemsState>(
      'should emit error message',
      setUp: () {
        when(() => useCase()).thenAnswer(
          (_) async => const Left(
            ServerFailure(message: 'ocorreu um erro', code: ''),
          ),
        );
      },
      build: () => cubit,
      act: (cubit) => cubit.getItems(),
      expect: () => [
        const GetItemsState.loading(),
        const GetItemsState.failed(message: 'ocorreu um erro'),
      ],
    );
  });
}
