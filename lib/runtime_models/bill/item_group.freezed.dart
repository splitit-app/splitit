// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemGroup {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  List<PublicProfile> get primarySplits => throw _privateConstructorUsedError;
  set primarySplits(List<PublicProfile> value) =>
      throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;
  set items(List<Item> value) => throw _privateConstructorUsedError;
  List<SplitRule> get splitRules => throw _privateConstructorUsedError;
  set splitRules(List<SplitRule> value) => throw _privateConstructorUsedError;
  Map<PublicProfile, double> get splitBalances =>
      throw _privateConstructorUsedError;
  set splitBalances(Map<PublicProfile, double> value) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemGroupCopyWith<ItemGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemGroupCopyWith<$Res> {
  factory $ItemGroupCopyWith(ItemGroup value, $Res Function(ItemGroup) then) =
      _$ItemGroupCopyWithImpl<$Res, ItemGroup>;
  @useResult
  $Res call(
      {String name,
      List<PublicProfile> primarySplits,
      List<Item> items,
      List<SplitRule> splitRules,
      Map<PublicProfile, double> splitBalances});
}

/// @nodoc
class _$ItemGroupCopyWithImpl<$Res, $Val extends ItemGroup>
    implements $ItemGroupCopyWith<$Res> {
  _$ItemGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? primarySplits = null,
    Object? items = null,
    Object? splitRules = null,
    Object? splitBalances = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      primarySplits: null == primarySplits
          ? _value.primarySplits
          : primarySplits // ignore: cast_nullable_to_non_nullable
              as List<PublicProfile>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      splitRules: null == splitRules
          ? _value.splitRules
          : splitRules // ignore: cast_nullable_to_non_nullable
              as List<SplitRule>,
      splitBalances: null == splitBalances
          ? _value.splitBalances
          : splitBalances // ignore: cast_nullable_to_non_nullable
              as Map<PublicProfile, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemGroupImplCopyWith<$Res>
    implements $ItemGroupCopyWith<$Res> {
  factory _$$ItemGroupImplCopyWith(
          _$ItemGroupImpl value, $Res Function(_$ItemGroupImpl) then) =
      __$$ItemGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<PublicProfile> primarySplits,
      List<Item> items,
      List<SplitRule> splitRules,
      Map<PublicProfile, double> splitBalances});
}

/// @nodoc
class __$$ItemGroupImplCopyWithImpl<$Res>
    extends _$ItemGroupCopyWithImpl<$Res, _$ItemGroupImpl>
    implements _$$ItemGroupImplCopyWith<$Res> {
  __$$ItemGroupImplCopyWithImpl(
      _$ItemGroupImpl _value, $Res Function(_$ItemGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? primarySplits = null,
    Object? items = null,
    Object? splitRules = null,
    Object? splitBalances = null,
  }) {
    return _then(_$ItemGroupImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      primarySplits: null == primarySplits
          ? _value.primarySplits
          : primarySplits // ignore: cast_nullable_to_non_nullable
              as List<PublicProfile>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      splitRules: null == splitRules
          ? _value.splitRules
          : splitRules // ignore: cast_nullable_to_non_nullable
              as List<SplitRule>,
      splitBalances: null == splitBalances
          ? _value.splitBalances
          : splitBalances // ignore: cast_nullable_to_non_nullable
              as Map<PublicProfile, double>,
    ));
  }
}

/// @nodoc

class _$ItemGroupImpl extends _ItemGroup {
  _$ItemGroupImpl(
      {required this.name,
      required this.primarySplits,
      required this.items,
      required this.splitRules,
      required this.splitBalances})
      : super._();

  @override
  String name;
  @override
  List<PublicProfile> primarySplits;
  @override
  List<Item> items;
  @override
  List<SplitRule> splitRules;
  @override
  Map<PublicProfile, double> splitBalances;

  @override
  String toString() {
    return 'ItemGroup(name: $name, primarySplits: $primarySplits, items: $items, splitRules: $splitRules, splitBalances: $splitBalances)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemGroupImplCopyWith<_$ItemGroupImpl> get copyWith =>
      __$$ItemGroupImplCopyWithImpl<_$ItemGroupImpl>(this, _$identity);
}

abstract class _ItemGroup extends ItemGroup implements IItemGroup {
  factory _ItemGroup(
      {required String name,
      required List<PublicProfile> primarySplits,
      required List<Item> items,
      required List<SplitRule> splitRules,
      required Map<PublicProfile, double> splitBalances}) = _$ItemGroupImpl;
  _ItemGroup._() : super._();

  @override
  String get name;
  set name(String value);
  @override
  List<PublicProfile> get primarySplits;
  set primarySplits(List<PublicProfile> value);
  @override
  List<Item> get items;
  set items(List<Item> value);
  @override
  List<SplitRule> get splitRules;
  set splitRules(List<SplitRule> value);
  @override
  Map<PublicProfile, double> get splitBalances;
  set splitBalances(Map<PublicProfile, double> value);
  @override
  @JsonKey(ignore: true)
  _$$ItemGroupImplCopyWith<_$ItemGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
