// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tip _$TipFromJson(Map<String, dynamic> json) {
  return _Tip.fromJson(json);
}

/// @nodoc
mixin _$Tip {
  bool get usePercentage => throw _privateConstructorUsedError;
  set usePercentage(bool value) => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  set value(double value) => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  set rate(double value) =>
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
  $TipCopyWith<Tip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipCopyWith<$Res> {
  factory $TipCopyWith(Tip value, $Res Function(Tip) then) =
      _$TipCopyWithImpl<$Res, Tip>;
  @useResult
  $Res call(
      {bool usePercentage,
      double value,
      double rate,
      @JsonKey(includeFromJson: false, includeToJson: false)
      BillData? billData});

  $BillDataCopyWith<$Res>? get billData;
}

/// @nodoc
class _$TipCopyWithImpl<$Res, $Val extends Tip> implements $TipCopyWith<$Res> {
  _$TipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usePercentage = null,
    Object? value = null,
    Object? rate = null,
    Object? billData = freezed,
  }) {
    return _then(_value.copyWith(
      usePercentage: null == usePercentage
          ? _value.usePercentage
          : usePercentage // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$TipImplCopyWith<$Res> implements $TipCopyWith<$Res> {
  factory _$$TipImplCopyWith(_$TipImpl value, $Res Function(_$TipImpl) then) =
      __$$TipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool usePercentage,
      double value,
      double rate,
      @JsonKey(includeFromJson: false, includeToJson: false)
      BillData? billData});

  @override
  $BillDataCopyWith<$Res>? get billData;
}

/// @nodoc
class __$$TipImplCopyWithImpl<$Res> extends _$TipCopyWithImpl<$Res, _$TipImpl>
    implements _$$TipImplCopyWith<$Res> {
  __$$TipImplCopyWithImpl(_$TipImpl _value, $Res Function(_$TipImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usePercentage = null,
    Object? value = null,
    Object? rate = null,
    Object? billData = freezed,
  }) {
    return _then(_$TipImpl(
      usePercentage: null == usePercentage
          ? _value.usePercentage
          : usePercentage // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      billData: freezed == billData
          ? _value.billData
          : billData // ignore: cast_nullable_to_non_nullable
              as BillData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TipImpl extends _Tip {
  _$TipImpl(
      {this.usePercentage = true,
      this.value = 0,
      this.rate = 0,
      @JsonKey(includeFromJson: false, includeToJson: false) this.billData})
      : super._();

  factory _$TipImpl.fromJson(Map<String, dynamic> json) =>
      _$$TipImplFromJson(json);

  @override
  @JsonKey()
  bool usePercentage;
  @override
  @JsonKey()
  double value;
  @override
  @JsonKey()
  double rate;
// Late Initialized Reference
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  BillData? billData;

  @override
  String toString() {
    return 'Tip(usePercentage: $usePercentage, value: $value, rate: $rate, billData: $billData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipImplCopyWith<_$TipImpl> get copyWith =>
      __$$TipImplCopyWithImpl<_$TipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TipImplToJson(
      this,
    );
  }
}

abstract class _Tip extends Tip {
  factory _Tip(
      {bool usePercentage,
      double value,
      double rate,
      @JsonKey(includeFromJson: false, includeToJson: false)
      BillData? billData}) = _$TipImpl;
  _Tip._() : super._();

  factory _Tip.fromJson(Map<String, dynamic> json) = _$TipImpl.fromJson;

  @override
  bool get usePercentage;
  set usePercentage(bool value);
  @override
  double get value;
  set value(double value);
  @override
  double get rate;
  set rate(double value);
  @override // Late Initialized Reference
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  BillData? get billData; // Late Initialized Reference
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  set billData(BillData? value);
  @override
  @JsonKey(ignore: true)
  _$$TipImplCopyWith<_$TipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
