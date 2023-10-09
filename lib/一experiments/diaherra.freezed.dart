// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diaherra.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Diaherra _$DiaherraFromJson(Map<String, dynamic> json) {
  return _Diaherra.fromJson(json);
}

/// @nodoc
mixin _$Diaherra {
  String get a => throw _privateConstructorUsedError;
  int get b => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiaherraCopyWith<Diaherra> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaherraCopyWith<$Res> {
  factory $DiaherraCopyWith(Diaherra value, $Res Function(Diaherra) then) =
      _$DiaherraCopyWithImpl<$Res, Diaherra>;
  @useResult
  $Res call({String a, int b});
}

/// @nodoc
class _$DiaherraCopyWithImpl<$Res, $Val extends Diaherra>
    implements $DiaherraCopyWith<$Res> {
  _$DiaherraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiaherraCopyWith<$Res> implements $DiaherraCopyWith<$Res> {
  factory _$$_DiaherraCopyWith(
          _$_Diaherra value, $Res Function(_$_Diaherra) then) =
      __$$_DiaherraCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a, int b});
}

/// @nodoc
class __$$_DiaherraCopyWithImpl<$Res>
    extends _$DiaherraCopyWithImpl<$Res, _$_Diaherra>
    implements _$$_DiaherraCopyWith<$Res> {
  __$$_DiaherraCopyWithImpl(
      _$_Diaherra _value, $Res Function(_$_Diaherra) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
  }) {
    return _then(_$_Diaherra(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Diaherra extends _Diaherra {
  _$_Diaherra({required this.a, required this.b}) : super._();

  factory _$_Diaherra.fromJson(Map<String, dynamic> json) =>
      _$$_DiaherraFromJson(json);

  @override
  final String a;
  @override
  final int b;

  @override
  String toString() {
    return 'Diaherra(a: $a, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Diaherra &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, a, b);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiaherraCopyWith<_$_Diaherra> get copyWith =>
      __$$_DiaherraCopyWithImpl<_$_Diaherra>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiaherraToJson(
      this,
    );
  }
}

abstract class _Diaherra extends Diaherra {
  factory _Diaherra({required final String a, required final int b}) =
      _$_Diaherra;
  _Diaherra._() : super._();

  factory _Diaherra.fromJson(Map<String, dynamic> json) = _$_Diaherra.fromJson;

  @override
  String get a;
  @override
  int get b;
  @override
  @JsonKey(ignore: true)
  _$$_DiaherraCopyWith<_$_Diaherra> get copyWith =>
      throw _privateConstructorUsedError;
}
