// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDataDTO _$UserDataDTOFromJson(Map<String, dynamic> json) {
  return _UserDataDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDataDTO {
  PublicProfileDTO get publicProfile => throw _privateConstructorUsedError;
  List<String> get friendUids => throw _privateConstructorUsedError;
  DateTime get lastUpdatedSession => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataDTOCopyWith<UserDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataDTOCopyWith<$Res> {
  factory $UserDataDTOCopyWith(
          UserDataDTO value, $Res Function(UserDataDTO) then) =
      _$UserDataDTOCopyWithImpl<$Res, UserDataDTO>;
  @useResult
  $Res call(
      {PublicProfileDTO publicProfile,
      List<String> friendUids,
      DateTime lastUpdatedSession});

  $PublicProfileDTOCopyWith<$Res> get publicProfile;
}

/// @nodoc
class _$UserDataDTOCopyWithImpl<$Res, $Val extends UserDataDTO>
    implements $UserDataDTOCopyWith<$Res> {
  _$UserDataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicProfile = null,
    Object? friendUids = null,
    Object? lastUpdatedSession = null,
  }) {
    return _then(_value.copyWith(
      publicProfile: null == publicProfile
          ? _value.publicProfile
          : publicProfile // ignore: cast_nullable_to_non_nullable
              as PublicProfileDTO,
      friendUids: null == friendUids
          ? _value.friendUids
          : friendUids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastUpdatedSession: null == lastUpdatedSession
          ? _value.lastUpdatedSession
          : lastUpdatedSession // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicProfileDTOCopyWith<$Res> get publicProfile {
    return $PublicProfileDTOCopyWith<$Res>(_value.publicProfile, (value) {
      return _then(_value.copyWith(publicProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDataDTOCopyWith<$Res>
    implements $UserDataDTOCopyWith<$Res> {
  factory _$$_UserDataDTOCopyWith(
          _$_UserDataDTO value, $Res Function(_$_UserDataDTO) then) =
      __$$_UserDataDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PublicProfileDTO publicProfile,
      List<String> friendUids,
      DateTime lastUpdatedSession});

  @override
  $PublicProfileDTOCopyWith<$Res> get publicProfile;
}

/// @nodoc
class __$$_UserDataDTOCopyWithImpl<$Res>
    extends _$UserDataDTOCopyWithImpl<$Res, _$_UserDataDTO>
    implements _$$_UserDataDTOCopyWith<$Res> {
  __$$_UserDataDTOCopyWithImpl(
      _$_UserDataDTO _value, $Res Function(_$_UserDataDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicProfile = null,
    Object? friendUids = null,
    Object? lastUpdatedSession = null,
  }) {
    return _then(_$_UserDataDTO(
      publicProfile: null == publicProfile
          ? _value.publicProfile
          : publicProfile // ignore: cast_nullable_to_non_nullable
              as PublicProfileDTO,
      friendUids: null == friendUids
          ? _value._friendUids
          : friendUids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastUpdatedSession: null == lastUpdatedSession
          ? _value.lastUpdatedSession
          : lastUpdatedSession // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserDataDTO extends _UserDataDTO {
  _$_UserDataDTO(
      {required this.publicProfile,
      required final List<String> friendUids,
      required this.lastUpdatedSession})
      : _friendUids = friendUids,
        super._();

  factory _$_UserDataDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataDTOFromJson(json);

  @override
  final PublicProfileDTO publicProfile;
  final List<String> _friendUids;
  @override
  List<String> get friendUids {
    if (_friendUids is EqualUnmodifiableListView) return _friendUids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friendUids);
  }

  @override
  final DateTime lastUpdatedSession;

  @override
  String toString() {
    return 'UserDataDTO(publicProfile: $publicProfile, friendUids: $friendUids, lastUpdatedSession: $lastUpdatedSession)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDataDTO &&
            (identical(other.publicProfile, publicProfile) ||
                other.publicProfile == publicProfile) &&
            const DeepCollectionEquality()
                .equals(other._friendUids, _friendUids) &&
            (identical(other.lastUpdatedSession, lastUpdatedSession) ||
                other.lastUpdatedSession == lastUpdatedSession));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publicProfile,
      const DeepCollectionEquality().hash(_friendUids), lastUpdatedSession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataDTOCopyWith<_$_UserDataDTO> get copyWith =>
      __$$_UserDataDTOCopyWithImpl<_$_UserDataDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataDTOToJson(
      this,
    );
  }
}

abstract class _UserDataDTO extends UserDataDTO {
  factory _UserDataDTO(
      {required final PublicProfileDTO publicProfile,
      required final List<String> friendUids,
      required final DateTime lastUpdatedSession}) = _$_UserDataDTO;
  _UserDataDTO._() : super._();

  factory _UserDataDTO.fromJson(Map<String, dynamic> json) =
      _$_UserDataDTO.fromJson;

  @override
  PublicProfileDTO get publicProfile;
  @override
  List<String> get friendUids;
  @override
  DateTime get lastUpdatedSession;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataDTOCopyWith<_$_UserDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
