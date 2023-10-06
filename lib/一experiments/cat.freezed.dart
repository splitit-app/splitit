// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cat _$CatFromJson(Map<String, dynamic> json) {
  return _Cat.fromJson(json);
}

/// @nodoc
mixin _$Cat {
  int get pus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatCopyWith<Cat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatCopyWith<$Res> {
  factory $CatCopyWith(Cat value, $Res Function(Cat) then) =
      _$CatCopyWithImpl<$Res, Cat>;
  @useResult
  $Res call({int pus});
}

/// @nodoc
class _$CatCopyWithImpl<$Res, $Val extends Cat> implements $CatCopyWith<$Res> {
  _$CatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pus = null,
  }) {
    return _then(_value.copyWith(
      pus: null == pus
          ? _value.pus
          : pus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatCopyWith<$Res> implements $CatCopyWith<$Res> {
  factory _$$_CatCopyWith(_$_Cat value, $Res Function(_$_Cat) then) =
      __$$_CatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pus});
}

/// @nodoc
class __$$_CatCopyWithImpl<$Res> extends _$CatCopyWithImpl<$Res, _$_Cat>
    implements _$$_CatCopyWith<$Res> {
  __$$_CatCopyWithImpl(_$_Cat _value, $Res Function(_$_Cat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pus = null,
  }) {
    return _then(_$_Cat(
      pus: null == pus
          ? _value.pus
          : pus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cat extends _Cat {
  _$_Cat({required this.pus}) : super._();

  factory _$_Cat.fromJson(Map<String, dynamic> json) => _$$_CatFromJson(json);

  @override
  final int pus;

  @override
  String toString() {
    return 'Cat(pus: $pus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cat &&
            (identical(other.pus, pus) || other.pus == pus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatCopyWith<_$_Cat> get copyWith =>
      __$$_CatCopyWithImpl<_$_Cat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatToJson(
      this,
    );
  }
}

abstract class _Cat extends Cat {
  factory _Cat({required final int pus}) = _$_Cat;
  _Cat._() : super._();

  factory _Cat.fromJson(Map<String, dynamic> json) = _$_Cat.fromJson;

  @override
  int get pus;
  @override
  @JsonKey(ignore: true)
  _$$_CatCopyWith<_$_Cat> get copyWith => throw _privateConstructorUsedError;
}
