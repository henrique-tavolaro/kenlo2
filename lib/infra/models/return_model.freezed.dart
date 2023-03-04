// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReturnModel _$ReturnModelFromJson(Map<String, dynamic> json) {
  return _ReturnModel.fromJson(json);
}

/// @nodoc
mixin _$ReturnModel {
  int get total => throw _privateConstructorUsedError;
  List<ItemsModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnModelCopyWith<ReturnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnModelCopyWith<$Res> {
  factory $ReturnModelCopyWith(
          ReturnModel value, $Res Function(ReturnModel) then) =
      _$ReturnModelCopyWithImpl<$Res, ReturnModel>;
  @useResult
  $Res call({int total, List<ItemsModel> items});
}

/// @nodoc
class _$ReturnModelCopyWithImpl<$Res, $Val extends ReturnModel>
    implements $ReturnModelCopyWith<$Res> {
  _$ReturnModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReturnModelCopyWith<$Res>
    implements $ReturnModelCopyWith<$Res> {
  factory _$$_ReturnModelCopyWith(
          _$_ReturnModel value, $Res Function(_$_ReturnModel) then) =
      __$$_ReturnModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, List<ItemsModel> items});
}

/// @nodoc
class __$$_ReturnModelCopyWithImpl<$Res>
    extends _$ReturnModelCopyWithImpl<$Res, _$_ReturnModel>
    implements _$$_ReturnModelCopyWith<$Res> {
  __$$_ReturnModelCopyWithImpl(
      _$_ReturnModel _value, $Res Function(_$_ReturnModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? items = null,
  }) {
    return _then(_$_ReturnModel(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReturnModel implements _ReturnModel {
  const _$_ReturnModel(
      {required this.total, required final List<ItemsModel> items})
      : _items = items;

  factory _$_ReturnModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReturnModelFromJson(json);

  @override
  final int total;
  final List<ItemsModel> _items;
  @override
  List<ItemsModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ReturnModel(total: $total, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReturnModel &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReturnModelCopyWith<_$_ReturnModel> get copyWith =>
      __$$_ReturnModelCopyWithImpl<_$_ReturnModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReturnModelToJson(
      this,
    );
  }
}

abstract class _ReturnModel implements ReturnModel {
  const factory _ReturnModel(
      {required final int total,
      required final List<ItemsModel> items}) = _$_ReturnModel;

  factory _ReturnModel.fromJson(Map<String, dynamic> json) =
      _$_ReturnModel.fromJson;

  @override
  int get total;
  @override
  List<ItemsModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_ReturnModelCopyWith<_$_ReturnModel> get copyWith =>
      throw _privateConstructorUsedError;
}
