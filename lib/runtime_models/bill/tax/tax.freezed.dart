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

/// @nodoc
mixin _$Tax {
  double get value => throw _privateConstructorUsedError;
  set value(double value) => throw _privateConstructorUsedError;
  bool get includedInTotal => throw _privateConstructorUsedError;
  set includedInTotal(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaxCopyWith<Tax> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxCopyWith<$Res> {
  factory $TaxCopyWith(Tax value, $Res Function(Tax) then) =
      _$TaxCopyWithImpl<$Res, Tax>;
  @useResult
  $Res call({double value, bool includedInTotal});
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
    Object? value = null,
    Object? includedInTotal = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      includedInTotal: null == includedInTotal
          ? _value.includedInTotal
          : includedInTotal // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaxImplCopyWith<$Res> implements $TaxCopyWith<$Res> {
  factory _$$TaxImplCopyWith(_$TaxImpl value, $Res Function(_$TaxImpl) then) =
      __$$TaxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, bool includedInTotal});
}

/// @nodoc
class __$$TaxImplCopyWithImpl<$Res> extends _$TaxCopyWithImpl<$Res, _$TaxImpl>
    implements _$$TaxImplCopyWith<$Res> {
  __$$TaxImplCopyWithImpl(_$TaxImpl _value, $Res Function(_$TaxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? includedInTotal = null,
  }) {
    return _then(_$TaxImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      includedInTotal: null == includedInTotal
          ? _value.includedInTotal
          : includedInTotal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TaxImpl implements _Tax {
  _$TaxImpl({this.value = 0, this.includedInTotal = true}) : assert(value >= 0);

  @override
  @JsonKey()
  double value;
  @override
  @JsonKey()
  bool includedInTotal;

  @override
  String toString() {
    return 'Tax(value: $value, includedInTotal: $includedInTotal)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxImplCopyWith<_$TaxImpl> get copyWith =>
      __$$TaxImplCopyWithImpl<_$TaxImpl>(this, _$identity);
}

abstract class _Tax implements Tax {
  factory _Tax({double value, bool includedInTotal}) = _$TaxImpl;

  @override
  double get value;
  set value(double value);
  @override
  bool get includedInTotal;
  set includedInTotal(bool value);
  @override
  @JsonKey(ignore: true)
  _$$TaxImplCopyWith<_$TaxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
