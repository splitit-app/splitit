// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'split_rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SplitRule _$SplitRuleFromJson(Map<String, dynamic> json) {
  return _SplitRule.fromJson(json);
}

/// @nodoc
mixin _$SplitRule {
  int get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SplitRuleCopyWith<SplitRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplitRuleCopyWith<$Res> {
  factory $SplitRuleCopyWith(SplitRule value, $Res Function(SplitRule) then) =
      _$SplitRuleCopyWithImpl<$Res, SplitRule>;
  @useResult
  $Res call({int type});
}

/// @nodoc
class _$SplitRuleCopyWithImpl<$Res, $Val extends SplitRule>
    implements $SplitRuleCopyWith<$Res> {
  _$SplitRuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplitRuleImplCopyWith<$Res>
    implements $SplitRuleCopyWith<$Res> {
  factory _$$SplitRuleImplCopyWith(
          _$SplitRuleImpl value, $Res Function(_$SplitRuleImpl) then) =
      __$$SplitRuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int type});
}

/// @nodoc
class __$$SplitRuleImplCopyWithImpl<$Res>
    extends _$SplitRuleCopyWithImpl<$Res, _$SplitRuleImpl>
    implements _$$SplitRuleImplCopyWith<$Res> {
  __$$SplitRuleImplCopyWithImpl(
      _$SplitRuleImpl _value, $Res Function(_$SplitRuleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$SplitRuleImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SplitRuleImpl implements _SplitRule {
  _$SplitRuleImpl({required this.type});

  factory _$SplitRuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$SplitRuleImplFromJson(json);

  @override
  final int type;

  @override
  String toString() {
    return 'SplitRule(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplitRuleImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplitRuleImplCopyWith<_$SplitRuleImpl> get copyWith =>
      __$$SplitRuleImplCopyWithImpl<_$SplitRuleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SplitRuleImplToJson(
      this,
    );
  }
}

abstract class _SplitRule implements SplitRule {
  factory _SplitRule({required final int type}) = _$SplitRuleImpl;

  factory _SplitRule.fromJson(Map<String, dynamic> json) =
      _$SplitRuleImpl.fromJson;

  @override
  int get type;
  @override
  @JsonKey(ignore: true)
  _$$SplitRuleImplCopyWith<_$SplitRuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
