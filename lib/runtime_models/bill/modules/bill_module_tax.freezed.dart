// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_module_tax.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BillModule_Tax {
  double get totalTax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BillModule_TaxCopyWith<BillModule_Tax> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillModule_TaxCopyWith<$Res> {
  factory $BillModule_TaxCopyWith(
          BillModule_Tax value, $Res Function(BillModule_Tax) then) =
      _$BillModule_TaxCopyWithImpl<$Res, BillModule_Tax>;
  @useResult
  $Res call({double totalTax});
}

/// @nodoc
class _$BillModule_TaxCopyWithImpl<$Res, $Val extends BillModule_Tax>
    implements $BillModule_TaxCopyWith<$Res> {
  _$BillModule_TaxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTax = null,
  }) {
    return _then(_value.copyWith(
      totalTax: null == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillModule_TaxImplCopyWith<$Res>
    implements $BillModule_TaxCopyWith<$Res> {
  factory _$$BillModule_TaxImplCopyWith(_$BillModule_TaxImpl value,
          $Res Function(_$BillModule_TaxImpl) then) =
      __$$BillModule_TaxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double totalTax});
}

/// @nodoc
class __$$BillModule_TaxImplCopyWithImpl<$Res>
    extends _$BillModule_TaxCopyWithImpl<$Res, _$BillModule_TaxImpl>
    implements _$$BillModule_TaxImplCopyWith<$Res> {
  __$$BillModule_TaxImplCopyWithImpl(
      _$BillModule_TaxImpl _value, $Res Function(_$BillModule_TaxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTax = null,
  }) {
    return _then(_$BillModule_TaxImpl(
      totalTax: null == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BillModule_TaxImpl implements _BillModule_Tax {
  _$BillModule_TaxImpl({this.totalTax = 0});

  @override
  @JsonKey()
  final double totalTax;

  @override
  String toString() {
    return 'BillModule_Tax(totalTax: $totalTax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillModule_TaxImpl &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalTax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillModule_TaxImplCopyWith<_$BillModule_TaxImpl> get copyWith =>
      __$$BillModule_TaxImplCopyWithImpl<_$BillModule_TaxImpl>(
          this, _$identity);
}

abstract class _BillModule_Tax implements BillModule_Tax {
  factory _BillModule_Tax({final double totalTax}) = _$BillModule_TaxImpl;

  @override
  double get totalTax;
  @override
  @JsonKey(ignore: true)
  _$$BillModule_TaxImplCopyWith<_$BillModule_TaxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
