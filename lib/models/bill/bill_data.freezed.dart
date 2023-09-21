// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillData _$BillDataFromJson(Map<String, dynamic> json) {
  return _BillData.fromJson(json);
}

/// @nodoc
mixin _$BillData {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillDataCopyWith<BillData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillDataCopyWith<$Res> {
  factory $BillDataCopyWith(BillData value, $Res Function(BillData) then) =
      _$BillDataCopyWithImpl<$Res, BillData>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$BillDataCopyWithImpl<$Res, $Val extends BillData>
    implements $BillDataCopyWith<$Res> {
  _$BillDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BillDataCopyWith<$Res> implements $BillDataCopyWith<$Res> {
  factory _$$_BillDataCopyWith(
          _$_BillData value, $Res Function(_$_BillData) then) =
      __$$_BillDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_BillDataCopyWithImpl<$Res>
    extends _$BillDataCopyWithImpl<$Res, _$_BillData>
    implements _$$_BillDataCopyWith<$Res> {
  __$$_BillDataCopyWithImpl(
      _$_BillData _value, $Res Function(_$_BillData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_BillData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BillData implements _BillData {
  _$_BillData({required this.name});

  factory _$_BillData.fromJson(Map<String, dynamic> json) =>
      _$$_BillDataFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'BillData(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillData &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillDataCopyWith<_$_BillData> get copyWith =>
      __$$_BillDataCopyWithImpl<_$_BillData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillDataToJson(
      this,
    );
  }
}

abstract class _BillData implements BillData {
  factory _BillData({required final String name}) = _$_BillData;

  factory _BillData.fromJson(Map<String, dynamic> json) = _$_BillData.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_BillDataCopyWith<_$_BillData> get copyWith =>
      throw _privateConstructorUsedError;
}
