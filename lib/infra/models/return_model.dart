import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kenlo2/domain/entities/return_entity.dart';

import 'items_model.dart';

part 'return_model.freezed.dart';
part 'return_model.g.dart';

@freezed
class ReturnModel extends ReturnEntity with _$ReturnModel {
  const factory ReturnModel({
    required int total,
    required List<ItemsModel> items,
}) = _ReturnModel;

  factory ReturnModel.fromJson(Map<String, dynamic> json) =>
      _$ReturnModelFromJson(json);
}