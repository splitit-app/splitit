// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tax.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tax _$TaxFromJson(Map<String, dynamic> json) {
  return _Tax.fromJson(json);
}

/// @nodoc
mixin _$Tax {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  set value(double value) => throw _privateConstructorUsedError;
  bool get includedInTotal => throw _privateConstructorUsedError;
  set includedInTotal(bool value) =>
      throw _privateConstructorUsedError; // Late Initialized Reference
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  BillData? get billData =>
      throw _privateConstructorUsedError; // Late Initialized Reference
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  set billData(BillData? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxCopyWith<Tax> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxCopyWith<$Res> {
  factory $TaxCopyWith(Tax value, $Res Function(Tax) then) =
      _$TaxCopyWithImpl<$Res, Tax>;
  @useResult
  $Res call(
      {String name,
      double value,
      bool includedInTotal,
      @JsonKey(includeFromJson: false, includeToJson: false)
      BillData? billData});

  $BillDataCopyWith<$Res>? get billData;
}

/// @nodoc
class _$TaxCopyWithImpl<$Res, $Val extends Tax> implements $TaxCopyWith<$Res> {
  _$TaxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? includedInTotal = null,
    Object? billData = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      includedInTotal: null == includedInTotal
          ? _value.includedInTotal
          : includedInTotal // ignore: cast_nullable_to_non_nullable
              as bool,
      billData: freezed == billData
          ? _value.billData
          : billData // ignore: cast_nullable_to_non_nullable
              as BillData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BillDataCopyWith<$Res>? get billData {
    if (_value.billData == null) {
      return null;
    }

    return $BillDataCopyWith<$Res>(_value.billData!, (value) {
      return _then(_value.copyWith(billData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaxImplCopyWith<$Res> implements $TaxCopyWith<$Res> {
  factory _$$TaxImplCopyWith(_$TaxImpl value, $Res Function(_$TaxImpl) then) =
      __$$TaxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      double value,
      bool includedInTotal,
      @JsonKey(includeFromJson: false, includeToJson: false)
      BillData? billData});

  @override
  $BillDataCopyWith<$Res>? get billData;
}

/// @nodoc
class __$$TaxImplCopyWithImpl<$Res> extends _$TaxCopyWithImpl<$Res, _$TaxImpl>
    implements _$$TaxImplCopyWith<$Res> {
  __$$TaxImplCopyWithImpl(_$TaxImpl _value, $Res Function(_$TaxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? includedInTotal = null,
    Object? billData = freezed,
  }) {
    return _then(_$TaxImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      includedInTotal: null == includedInTotal
          ? _value.includedInTotal
          : includedInTotal // ignore: cast_nullable_to_non_nullable
              as bool,
      billData: freezed == billData
          ? _value.billData
          : billData // ignore: cast_nullable_to_non_nullable
              as BillData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaxImpl implements _Tax {
  _$TaxImpl(
      {this.name = 'New Item',
      this.value = 0,
      this.includedInTotal = true,
      @JsonKey(includeFromJson: false, includeToJson: false) this.billData})
      : assert(value >= 0);

  factory _$TaxImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxImplFromJson(json);

  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  double value;
  @override
  @JsonKey()
  bool includedInTotal;
// Late Initialized Reference
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  BillData? billData;

  @override
  String toString() {
    return 'Tax(name: $name, value: $value, includedInTotal: $includedInTotal, billData: $billData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxImplCopyWith<_$TaxImpl> get copyWith =>
      __$$TaxImplCopyWithImpl<_$TaxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxImplToJson(
      this,
    );
  }
}

abstract class _Tax implements Tax {
  factory _Tax(
      {String name,
      double value,
      bool includedInTotal,
      @JsonKey(includeFromJson: false, includeToJson: false)
      BillData? billData}) = _$TaxImpl;

  factory _Tax.fromJson(Map<String, dynamic> json) = _$TaxImpl.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  double get value;
  set value(double value);
  @override
  bool get includedInTotal;
  set includedInTotal(bool value);
  @override // Late Initialized Reference
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  BillData? get billData; // Late Initialized Reference
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  set billData(BillData? value);
  @override
  @JsonKey(ignore: true)
  _$$TaxImplCopyWith<_$TaxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
