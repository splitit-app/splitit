// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Friend _$FriendFromJson(Map<String, dynamic> json) {
  return _Friend.fromJson(json);
}

/// @nodoc
mixin _$Friend {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendCopyWith<Friend> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendCopyWith<$Res> {
  factory $FriendCopyWith(Friend value, $Res Function(Friend) then) =
      _$FriendCopyWithImpl<$Res, Friend>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$FriendCopyWithImpl<$Res, $Val extends Friend>
    implements $FriendCopyWith<$Res> {
  _$FriendCopyWithImpl(this._value, this._then);

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
abstract class _$$_FriendCopyWith<$Res> implements $FriendCopyWith<$Res> {
  factory _$$_FriendCopyWith(_$_Friend value, $Res Function(_$_Friend) then) =
      __$$_FriendCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_FriendCopyWithImpl<$Res>
    extends _$FriendCopyWithImpl<$Res, _$_Friend>
    implements _$$_FriendCopyWith<$Res> {
  __$$_FriendCopyWithImpl(_$_Friend _value, $Res Function(_$_Friend) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_Friend(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Friend implements _Friend {
  _$_Friend({required this.name});

  factory _$_Friend.fromJson(Map<String, dynamic> json) =>
      _$$_FriendFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Friend(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Friend &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendCopyWith<_$_Friend> get copyWith =>
      __$$_FriendCopyWithImpl<_$_Friend>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendToJson(
      this,
    );
  }
}

abstract class _Friend implements Friend {
  factory _Friend({required final String name}) = _$_Friend;

  factory _Friend.fromJson(Map<String, dynamic> json) = _$_Friend.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_FriendCopyWith<_$_Friend> get copyWith =>
      throw _privateConstructorUsedError;
}
