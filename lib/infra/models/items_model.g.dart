// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemsModel _$$_ItemsModelFromJson(Map<String, dynamic> json) =>
    _$_ItemsModel(
      id: json['id'] as int,
      cidade: json['cidade'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ItemsModelToJson(_$_ItemsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cidade': instance.cidade,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
