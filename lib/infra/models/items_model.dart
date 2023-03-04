
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kenlo2/domain/entities/items_entity.dart';

part 'items_model.freezed.dart';
part 'items_model.g.dart';

@freezed
class ItemsModel extends ItemsEntity with _$ItemsModel {
  const factory ItemsModel({
    required int id,
    required String cidade,
    required double longitude,
    required double latitude
  }) = _ItemsModel;

  factory ItemsModel.fromJson(Map<String, dynamic> json) =>
      _$ItemsModelFromJson(json);
}