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
  List<PublicProfile> get primarySplits => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;
  List<SplitRule> get splitRules => throw _privateConstructorUsedError;
  Map<PublicProfile, double> get splitBalances =>
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
abstract class _$$_ItemGroupCopyWith<$Res> implements $ItemGroupCopyWith<$Res> {
  factory _$$_ItemGroupCopyWith(
          _$_ItemGroup value, $Res Function(_$_ItemGroup) then) =
      __$$_ItemGroupCopyWithImpl<$Res>;
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
class __$$_ItemGroupCopyWithImpl<$Res>
    extends _$ItemGroupCopyWithImpl<$Res, _$_ItemGroup>
    implements _$$_ItemGroupCopyWith<$Res> {
  __$$_ItemGroupCopyWithImpl(
      _$_ItemGroup _value, $Res Function(_$_ItemGroup) _then)
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
    return _then(_$_ItemGroup(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      primarySplits: null == primarySplits
          ? _value._primarySplits
          : primarySplits // ignore: cast_nullable_to_non_nullable
              as List<PublicProfile>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      splitRules: null == splitRules
          ? _value._splitRules
          : splitRules // ignore: cast_nullable_to_non_nullable
              as List<SplitRule>,
      splitBalances: null == splitBalances
          ? _value._splitBalances
          : splitBalances // ignore: cast_nullable_to_non_nullable
              as Map<PublicProfile, double>,
    ));
  }
}

/// @nodoc

class _$_ItemGroup extends _ItemGroup {
  _$_ItemGroup(
      {this.name = '',
      required final List<PublicProfile> primarySplits,
      required final List<Item> items,
      required final List<SplitRule> splitRules,
      required final Map<PublicProfile, double> splitBalances})
      : _primarySplits = primarySplits,
        _items = items,
        _splitRules = splitRules,
        _splitBalances = splitBalances,
        super._();

  @override
  @JsonKey()
  final String name;
  final List<PublicProfile> _primarySplits;
  @override
  List<PublicProfile> get primarySplits {
    if (_primarySplits is EqualUnmodifiableListView) return _primarySplits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_primarySplits);
  }

  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<SplitRule> _splitRules;
  @override
  List<SplitRule> get splitRules {
    if (_splitRules is EqualUnmodifiableListView) return _splitRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_splitRules);
  }

  final Map<PublicProfile, double> _splitBalances;
  @override
  Map<PublicProfile, double> get splitBalances {
    if (_splitBalances is EqualUnmodifiableMapView) return _splitBalances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_splitBalances);
  }

  @override
  String toString() {
    return 'ItemGroup(name: $name, primarySplits: $primarySplits, items: $items, splitRules: $splitRules, splitBalances: $splitBalances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemGroup &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._primarySplits, _primarySplits) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._splitRules, _splitRules) &&
            const DeepCollectionEquality()
                .equals(other._splitBalances, _splitBalances));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_primarySplits),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_splitRules),
      const DeepCollectionEquality().hash(_splitBalances));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemGroupCopyWith<_$_ItemGroup> get copyWith =>
      __$$_ItemGroupCopyWithImpl<_$_ItemGroup>(this, _$identity);
}

abstract class _ItemGroup extends ItemGroup {
  factory _ItemGroup(
      {final String name,
      required final List<PublicProfile> primarySplits,
      required final List<Item> items,
      required final List<SplitRule> splitRules,
      required final Map<PublicProfile, double> splitBalances}) = _$_ItemGroup;
  _ItemGroup._() : super._();

  @override
  String get name;
  @override
  List<PublicProfile> get primarySplits;
  @override
  List<Item> get items;
  @override
  List<SplitRule> get splitRules;
  @override
  Map<PublicProfile, double> get splitBalances;
  @override
  @JsonKey(ignore: true)
  _$$_ItemGroupCopyWith<_$_ItemGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
