import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kenlo2/domain/use_cases/get_items_use_case.dart';

import '../../infra/models/return_model.dart';

part 'get_items_state.dart';

part 'get_items_cubit.freezed.dart';

@injectable
class GetItemsCubit extends Cubit<GetItemsState> {
  final IGetItemUseCase useCase;

  GetItemsCubit(this.useCase) : super(const GetItemsState.initial());

  Future<void> getItems() async {
    emit(const GetItemsState.loading());
    final inputEither = await useCase();

    inputEither.fold(
      (l) => emit(GetItemsState.failed(message: l.message)),
      (r) => emit(GetItemsState.loaded(returnModel: r)),
    );
  }
}
