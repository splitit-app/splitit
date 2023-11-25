// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemGroupDTO _$ItemGroupDTOFromJson(Map<String, dynamic> json) {
  return _ItemGroupDTO.fromJson(json);
}

/// @nodoc
mixin _$ItemGroupDTO {
  String get name => throw _privateConstructorUsedError;
  List<String> get primarySplits => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;
  List<SplitRule> get splitRules => throw _privateConstructorUsedError;
  Map<String, double> get splitBalances => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemGroupDTOCopyWith<ItemGroupDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemGroupDTOCopyWith<$Res> {
  factory $ItemGroupDTOCopyWith(
          ItemGroupDTO value, $Res Function(ItemGroupDTO) then) =
      _$ItemGroupDTOCopyWithImpl<$Res, ItemGroupDTO>;
  @useResult
  $Res call(
      {String name,
      List<String> primarySplits,
      List<Item> items,
      List<SplitRule> splitRules,
      Map<String, double> splitBalances});
}

/// @nodoc
class _$ItemGroupDTOCopyWithImpl<$Res, $Val extends ItemGroupDTO>
    implements $ItemGroupDTOCopyWith<$Res> {
  _$ItemGroupDTOCopyWithImpl(this._value, this._then);

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
              as List<String>,
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
              as Map<String, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemGroupDTOImplCopyWith<$Res>
    implements $ItemGroupDTOCopyWith<$Res> {
  factory _$$ItemGroupDTOImplCopyWith(
          _$ItemGroupDTOImpl value, $Res Function(_$ItemGroupDTOImpl) then) =
      __$$ItemGroupDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<String> primarySplits,
      List<Item> items,
      List<SplitRule> splitRules,
      Map<String, double> splitBalances});
}

/// @nodoc
class __$$ItemGroupDTOImplCopyWithImpl<$Res>
    extends _$ItemGroupDTOCopyWithImpl<$Res, _$ItemGroupDTOImpl>
    implements _$$ItemGroupDTOImplCopyWith<$Res> {
  __$$ItemGroupDTOImplCopyWithImpl(
      _$ItemGroupDTOImpl _value, $Res Function(_$ItemGroupDTOImpl) _then)
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
    return _then(_$ItemGroupDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      primarySplits: null == primarySplits
          ? _value._primarySplits
          : primarySplits // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
              as Map<String, double>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ItemGroupDTOImpl implements _ItemGroupDTO {
  _$ItemGroupDTOImpl(
      {required this.name,
      required final List<String> primarySplits,
      required final List<Item> items,
      required final List<SplitRule> splitRules,
      required final Map<String, double> splitBalances})
      : _primarySplits = primarySplits,
        _items = items,
        _splitRules = splitRules,
        _splitBalances = splitBalances;

  factory _$ItemGroupDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemGroupDTOImplFromJson(json);

  @override
  final String name;
  final List<String> _primarySplits;
  @override
  List<String> get primarySplits {
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

  final Map<String, double> _splitBalances;
  @override
  Map<String, double> get splitBalances {
    if (_splitBalances is EqualUnmodifiableMapView) return _splitBalances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_splitBalances);
  }

  @override
  String toString() {
    return 'ItemGroupDTO(name: $name, primarySplits: $primarySplits, items: $items, splitRules: $splitRules, splitBalances: $splitBalances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemGroupDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._primarySplits, _primarySplits) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._splitRules, _splitRules) &&
            const DeepCollectionEquality()
                .equals(other._splitBalances, _splitBalances));
  }

  @JsonKey(ignore: true)
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
  _$$ItemGroupDTOImplCopyWith<_$ItemGroupDTOImpl> get copyWith =>
      __$$ItemGroupDTOImplCopyWithImpl<_$ItemGroupDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemGroupDTOImplToJson(
      this,
    );
  }
}

abstract class _ItemGroupDTO implements ItemGroupDTO {
  factory _ItemGroupDTO(
      {required final String name,
      required final List<String> primarySplits,
      required final List<Item> items,
      required final List<SplitRule> splitRules,
      required final Map<String, double> splitBalances}) = _$ItemGroupDTOImpl;

  factory _ItemGroupDTO.fromJson(Map<String, dynamic> json) =
      _$ItemGroupDTOImpl.fromJson;

  @override
  String get name;
  @override
  List<String> get primarySplits;
  @override
  List<Item> get items;
  @override
  List<SplitRule> get splitRules;
  @override
  Map<String, double> get splitBalances;
  @override
  @JsonKey(ignore: true)
  _$$ItemGroupDTOImplCopyWith<_$ItemGroupDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
