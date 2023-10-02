// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillData _$BillDataFromJson(Map<String, dynamic> json) {
  return _BillData.fromJson(json);
}

/// @nodoc
mixin _$BillData {
  DateTime get dateTime => throw _privateConstructorUsedError;
  set dateTime(DateTime value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  double get totalSpent => throw _privateConstructorUsedError;
  set totalSpent(double value) => throw _privateConstructorUsedError;
  Friend get payer => throw _privateConstructorUsedError;
  set payer(Friend value) => throw _privateConstructorUsedError;
  List<Friend> get primarySplits => throw _privateConstructorUsedError;
  set primarySplits(List<Friend> value) => throw _privateConstructorUsedError;
  List<Friend> get secondarySplits => throw _privateConstructorUsedError;
  set secondarySplits(List<Friend> value) => throw _privateConstructorUsedError;
  List<bool> get splitRules => throw _privateConstructorUsedError;
  set splitRules(List<bool> value) =>
      throw _privateConstructorUsedError; //TODO: Replace placeholder type bool
  List<(Friend, bool)> get paymentResolveStatuses =>
      throw _privateConstructorUsedError; //TODO: Replace placeholder type bool
  set paymentResolveStatuses(List<(Friend, bool)> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillDataCopyWith<BillData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillDataCopyWith<$Res> {
  factory $BillDataCopyWith(BillData value, $Res Function(BillData) then) =
      _$BillDataCopyWithImpl<$Res, BillData>;
  @useResult
  $Res call(
      {DateTime dateTime,
      String name,
      double totalSpent,
      Friend payer,
      List<Friend> primarySplits,
      List<Friend> secondarySplits,
      List<bool> splitRules,
      List<(Friend, bool)> paymentResolveStatuses});

  $FriendCopyWith<$Res> get payer;
}

/// @nodoc
class _$BillDataCopyWithImpl<$Res, $Val extends BillData>
    implements $BillDataCopyWith<$Res> {
  _$BillDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? name = null,
    Object? totalSpent = null,
    Object? payer = null,
    Object? primarySplits = null,
    Object? secondarySplits = null,
    Object? splitRules = null,
    Object? paymentResolveStatuses = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalSpent: null == totalSpent
          ? _value.totalSpent
          : totalSpent // ignore: cast_nullable_to_non_nullable
              as double,
      payer: null == payer
          ? _value.payer
          : payer // ignore: cast_nullable_to_non_nullable
              as Friend,
      primarySplits: null == primarySplits
          ? _value.primarySplits
          : primarySplits // ignore: cast_nullable_to_non_nullable
              as List<Friend>,
      secondarySplits: null == secondarySplits
          ? _value.secondarySplits
          : secondarySplits // ignore: cast_nullable_to_non_nullable
              as List<Friend>,
      splitRules: null == splitRules
          ? _value.splitRules
          : splitRules // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      paymentResolveStatuses: null == paymentResolveStatuses
          ? _value.paymentResolveStatuses
          : paymentResolveStatuses // ignore: cast_nullable_to_non_nullable
              as List<(Friend, bool)>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FriendCopyWith<$Res> get payer {
    return $FriendCopyWith<$Res>(_value.payer, (value) {
      return _then(_value.copyWith(payer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BillDataCopyWith<$Res> implements $BillDataCopyWith<$Res> {
  factory _$$_BillDataCopyWith(
          _$_BillData value, $Res Function(_$_BillData) then) =
      __$$_BillDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime dateTime,
      String name,
      double totalSpent,
      Friend payer,
      List<Friend> primarySplits,
      List<Friend> secondarySplits,
      List<bool> splitRules,
      List<(Friend, bool)> paymentResolveStatuses});

  @override
  $FriendCopyWith<$Res> get payer;
}

/// @nodoc
class __$$_BillDataCopyWithImpl<$Res>
    extends _$BillDataCopyWithImpl<$Res, _$_BillData>
    implements _$$_BillDataCopyWith<$Res> {
  __$$_BillDataCopyWithImpl(
      _$_BillData _value, $Res Function(_$_BillData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? name = null,
    Object? totalSpent = null,
    Object? payer = null,
    Object? primarySplits = null,
    Object? secondarySplits = null,
    Object? splitRules = null,
    Object? paymentResolveStatuses = null,
  }) {
    return _then(_$_BillData(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalSpent: null == totalSpent
          ? _value.totalSpent
          : totalSpent // ignore: cast_nullable_to_non_nullable
              as double,
      payer: null == payer
          ? _value.payer
          : payer // ignore: cast_nullable_to_non_nullable
              as Friend,
      primarySplits: null == primarySplits
          ? _value.primarySplits
          : primarySplits // ignore: cast_nullable_to_non_nullable
              as List<Friend>,
      secondarySplits: null == secondarySplits
          ? _value.secondarySplits
          : secondarySplits // ignore: cast_nullable_to_non_nullable
              as List<Friend>,
      splitRules: null == splitRules
          ? _value.splitRules
          : splitRules // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      paymentResolveStatuses: null == paymentResolveStatuses
          ? _value.paymentResolveStatuses
          : paymentResolveStatuses // ignore: cast_nullable_to_non_nullable
              as List<(Friend, bool)>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BillData implements _BillData {
  _$_BillData(
      {required this.dateTime,
      required this.name,
      required this.totalSpent,
      required this.payer,
      required this.primarySplits,
      required this.secondarySplits,
      required this.splitRules,
      required this.paymentResolveStatuses});

  factory _$_BillData.fromJson(Map<String, dynamic> json) =>
      _$$_BillDataFromJson(json);

  @override
  DateTime dateTime;
  @override
  String name;
  @override
  double totalSpent;
  @override
  Friend payer;
  @override
  List<Friend> primarySplits;
  @override
  List<Friend> secondarySplits;
  @override
  List<bool> splitRules;
//TODO: Replace placeholder type bool
  @override
  List<(Friend, bool)> paymentResolveStatuses;

  @override
  String toString() {
    return 'BillData(dateTime: $dateTime, name: $name, totalSpent: $totalSpent, payer: $payer, primarySplits: $primarySplits, secondarySplits: $secondarySplits, splitRules: $splitRules, paymentResolveStatuses: $paymentResolveStatuses)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillDataCopyWith<_$_BillData> get copyWith =>
      __$$_BillDataCopyWithImpl<_$_BillData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillDataToJson(
      this,
    );
  }
}

abstract class _BillData implements BillData {
  factory _BillData(
      {required DateTime dateTime,
      required String name,
      required double totalSpent,
      required Friend payer,
      required List<Friend> primarySplits,
      required List<Friend> secondarySplits,
      required List<bool> splitRules,
      required List<(Friend, bool)> paymentResolveStatuses}) = _$_BillData;

  factory _BillData.fromJson(Map<String, dynamic> json) = _$_BillData.fromJson;

  @override
  DateTime get dateTime;
  set dateTime(DateTime value);
  @override
  String get name;
  set name(String value);
  @override
  double get totalSpent;
  set totalSpent(double value);
  @override
  Friend get payer;
  set payer(Friend value);
  @override
  List<Friend> get primarySplits;
  set primarySplits(List<Friend> value);
  @override
  List<Friend> get secondarySplits;
  set secondarySplits(List<Friend> value);
  @override
  List<bool> get splitRules;
  set splitRules(List<bool> value);
  @override //TODO: Replace placeholder type bool
  List<(Friend, bool)>
      get paymentResolveStatuses; //TODO: Replace placeholder type bool
  set paymentResolveStatuses(List<(Friend, bool)> value);
  @override
  @JsonKey(ignore: true)
  _$$_BillDataCopyWith<_$_BillData> get copyWith =>
      throw _privateConstructorUsedError;
}
