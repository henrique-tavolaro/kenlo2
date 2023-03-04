// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReturnModel _$$_ReturnModelFromJson(Map<String, dynamic> json) =>
    _$_ReturnModel(
      total: json['total'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReturnModelToJson(_$_ReturnModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items,
    };
