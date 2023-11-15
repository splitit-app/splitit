// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'everything_else_item_group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EverythingElseItemGroupDTO _$EverythingElseItemGroupDTOFromJson(
    Map<String, dynamic> json) {
  return _EverythingElseItemGroupDTO.fromJson(json);
}

/// @nodoc
mixin _$EverythingElseItemGroupDTO {
  List<String> get primarySplits => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;
  List<SplitRule> get splitRules => throw _privateConstructorUsedError;
  Map<String, double> get splitBalances => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EverythingElseItemGroupDTOCopyWith<EverythingElseItemGroupDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EverythingElseItemGroupDTOCopyWith<$Res> {
  factory $EverythingElseItemGroupDTOCopyWith(EverythingElseItemGroupDTO value,
          $Res Function(EverythingElseItemGroupDTO) then) =
      _$EverythingElseItemGroupDTOCopyWithImpl<$Res,
          EverythingElseItemGroupDTO>;
  @useResult
  $Res call(
      {List<String> primarySplits,
      List<Item> items,
      List<SplitRule> splitRules,
      Map<String, double> splitBalances});
}

/// @nodoc
class _$EverythingElseItemGroupDTOCopyWithImpl<$Res,
        $Val extends EverythingElseItemGroupDTO>
    implements $EverythingElseItemGroupDTOCopyWith<$Res> {
  _$EverythingElseItemGroupDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primarySplits = null,
    Object? items = null,
    Object? splitRules = null,
    Object? splitBalances = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$EverythingElseItemGroupDTOImplCopyWith<$Res>
    implements $EverythingElseItemGroupDTOCopyWith<$Res> {
  factory _$$EverythingElseItemGroupDTOImplCopyWith(
          _$EverythingElseItemGroupDTOImpl value,
          $Res Function(_$EverythingElseItemGroupDTOImpl) then) =
      __$$EverythingElseItemGroupDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> primarySplits,
      List<Item> items,
      List<SplitRule> splitRules,
      Map<String, double> splitBalances});
}

/// @nodoc
class __$$EverythingElseItemGroupDTOImplCopyWithImpl<$Res>
    extends _$EverythingElseItemGroupDTOCopyWithImpl<$Res,
        _$EverythingElseItemGroupDTOImpl>
    implements _$$EverythingElseItemGroupDTOImplCopyWith<$Res> {
  __$$EverythingElseItemGroupDTOImplCopyWithImpl(
      _$EverythingElseItemGroupDTOImpl _value,
      $Res Function(_$EverythingElseItemGroupDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primarySplits = null,
    Object? items = null,
    Object? splitRules = null,
    Object? splitBalances = null,
  }) {
    return _then(_$EverythingElseItemGroupDTOImpl(
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
@JsonSerializable()
class _$EverythingElseItemGroupDTOImpl extends _EverythingElseItemGroupDTO {
  _$EverythingElseItemGroupDTOImpl(
      {required final List<String> primarySplits,
      required final List<Item> items,
      required final List<SplitRule> splitRules,
      required final Map<String, double> splitBalances})
      : _primarySplits = primarySplits,
        _items = items,
        _splitRules = splitRules,
        _splitBalances = splitBalances,
        super._();

  factory _$EverythingElseItemGroupDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EverythingElseItemGroupDTOImplFromJson(json);

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
    return 'EverythingElseItemGroupDTO(primarySplits: $primarySplits, items: $items, splitRules: $splitRules, splitBalances: $splitBalances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EverythingElseItemGroupDTOImpl &&
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
      const DeepCollectionEquality().hash(_primarySplits),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_splitRules),
      const DeepCollectionEquality().hash(_splitBalances));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EverythingElseItemGroupDTOImplCopyWith<_$EverythingElseItemGroupDTOImpl>
      get copyWith => __$$EverythingElseItemGroupDTOImplCopyWithImpl<
          _$EverythingElseItemGroupDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EverythingElseItemGroupDTOImplToJson(
      this,
    );
  }
}

abstract class _EverythingElseItemGroupDTO extends EverythingElseItemGroupDTO {
  factory _EverythingElseItemGroupDTO(
          {required final List<String> primarySplits,
          required final List<Item> items,
          required final List<SplitRule> splitRules,
          required final Map<String, double> splitBalances}) =
      _$EverythingElseItemGroupDTOImpl;
  _EverythingElseItemGroupDTO._() : super._();

  factory _EverythingElseItemGroupDTO.fromJson(Map<String, dynamic> json) =
      _$EverythingElseItemGroupDTOImpl.fromJson;

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
  _$$EverythingElseItemGroupDTOImplCopyWith<_$EverythingElseItemGroupDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
