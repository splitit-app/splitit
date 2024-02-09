// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrivateProfileDTO _$PrivateProfileDTOFromJson(Map<String, dynamic> json) {
  return _PrivateProfileDTO.fromJson(json);
}

/// @nodoc
mixin _$PrivateProfileDTO {
  String get themeMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivateProfileDTOCopyWith<PrivateProfileDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateProfileDTOCopyWith<$Res> {
  factory $PrivateProfileDTOCopyWith(
          PrivateProfileDTO value, $Res Function(PrivateProfileDTO) then) =
      _$PrivateProfileDTOCopyWithImpl<$Res, PrivateProfileDTO>;
  @useResult
  $Res call({String themeMode});
}

/// @nodoc
class _$PrivateProfileDTOCopyWithImpl<$Res, $Val extends PrivateProfileDTO>
    implements $PrivateProfileDTOCopyWith<$Res> {
  _$PrivateProfileDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivateProfileDTOImplCopyWith<$Res>
    implements $PrivateProfileDTOCopyWith<$Res> {
  factory _$$PrivateProfileDTOImplCopyWith(_$PrivateProfileDTOImpl value,
          $Res Function(_$PrivateProfileDTOImpl) then) =
      __$$PrivateProfileDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String themeMode});
}

/// @nodoc
class __$$PrivateProfileDTOImplCopyWithImpl<$Res>
    extends _$PrivateProfileDTOCopyWithImpl<$Res, _$PrivateProfileDTOImpl>
    implements _$$PrivateProfileDTOImplCopyWith<$Res> {
  __$$PrivateProfileDTOImplCopyWithImpl(_$PrivateProfileDTOImpl _value,
      $Res Function(_$PrivateProfileDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$PrivateProfileDTOImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivateProfileDTOImpl implements _PrivateProfileDTO {
  _$PrivateProfileDTOImpl({required this.themeMode});

  factory _$PrivateProfileDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivateProfileDTOImplFromJson(json);

  @override
  final String themeMode;

  @override
  String toString() {
    return 'PrivateProfileDTO(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivateProfileDTOImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivateProfileDTOImplCopyWith<_$PrivateProfileDTOImpl> get copyWith =>
      __$$PrivateProfileDTOImplCopyWithImpl<_$PrivateProfileDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivateProfileDTOImplToJson(
      this,
    );
  }
}

abstract class _PrivateProfileDTO implements PrivateProfileDTO {
  factory _PrivateProfileDTO({required final String themeMode}) =
      _$PrivateProfileDTOImpl;

  factory _PrivateProfileDTO.fromJson(Map<String, dynamic> json) =
      _$PrivateProfileDTOImpl.fromJson;

  @override
  String get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$PrivateProfileDTOImplCopyWith<_$PrivateProfileDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
