
part of 'get_items_cubit.dart';


@freezed
class GetItemsState with _$GetItemsState {
  const factory GetItemsState.initial() = _Initial;
  const factory GetItemsState.loading() = _Loading;
  const factory GetItemsState.loaded({required ReturnModel returnModel}) = _Loaded;
  const factory GetItemsState.failed({required String message}) = _Failed;
}