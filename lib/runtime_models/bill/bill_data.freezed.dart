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

/// @nodoc
mixin _$BillData {
  String get uid => throw _privateConstructorUsedError;
  set uid(String value) => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  set dateTime(DateTime value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  double get totalSpent => throw _privateConstructorUsedError;
  set totalSpent(double value) => throw _privateConstructorUsedError;
  PublicProfile? get payer => throw _privateConstructorUsedError;
  set payer(PublicProfile? value) => throw _privateConstructorUsedError;
  List<PublicProfile> get primarySplits => throw _privateConstructorUsedError;
  set primarySplits(List<PublicProfile> value) =>
      throw _privateConstructorUsedError;
  List<PublicProfile>? get secondarySplits =>
      throw _privateConstructorUsedError;
  set secondarySplits(List<PublicProfile>? value) =>
      throw _privateConstructorUsedError;
  Map<PublicProfile, double> get splitBalances =>
      throw _privateConstructorUsedError;
  set splitBalances(Map<PublicProfile, double> value) =>
      throw _privateConstructorUsedError;
  Map<PublicProfile, double> get paymentResolveStatuses =>
      throw _privateConstructorUsedError;
  set paymentResolveStatuses(Map<PublicProfile, double> value) =>
      throw _privateConstructorUsedError; //
  EverythingElseItemGroup get everythingElse =>
      throw _privateConstructorUsedError; //
  set everythingElse(EverythingElseItemGroup value) =>
      throw _privateConstructorUsedError;
  List<ItemGroup> get itemGroups => throw _privateConstructorUsedError;
  set itemGroups(List<ItemGroup> value) => throw _privateConstructorUsedError;
  BillModule_Tax get taxModule => throw _privateConstructorUsedError;
  set taxModule(BillModule_Tax value) => throw _privateConstructorUsedError;
  BillModule_Tip get tipModule => throw _privateConstructorUsedError;
  set tipModule(BillModule_Tip value) => throw _privateConstructorUsedError;
  DateTime get lastUpdatedSession => throw _privateConstructorUsedError;
  set lastUpdatedSession(DateTime value) => throw _privateConstructorUsedError;

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
      {String uid,
      DateTime dateTime,
      String name,
      double totalSpent,
      PublicProfile? payer,
      List<PublicProfile> primarySplits,
      List<PublicProfile>? secondarySplits,
      Map<PublicProfile, double> splitBalances,
      Map<PublicProfile, double> paymentResolveStatuses,
      EverythingElseItemGroup everythingElse,
      List<ItemGroup> itemGroups,
      BillModule_Tax taxModule,
      BillModule_Tip tipModule,
      DateTime lastUpdatedSession});

  $PublicProfileCopyWith<$Res>? get payer;
  $EverythingElseItemGroupCopyWith<$Res> get everythingElse;
  $BillModule_TaxCopyWith<$Res> get taxModule;
  $BillModule_TipCopyWith<$Res> get tipModule;
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
    Object? uid = null,
    Object? dateTime = null,
    Object? name = null,
    Object? totalSpent = null,
    Object? payer = freezed,
    Object? primarySplits = null,
    Object? secondarySplits = freezed,
    Object? splitBalances = null,
    Object? paymentResolveStatuses = null,
    Object? everythingElse = null,
    Object? itemGroups = null,
    Object? taxModule = null,
    Object? tipModule = null,
    Object? lastUpdatedSession = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
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
      payer: freezed == payer
          ? _value.payer
          : payer // ignore: cast_nullable_to_non_nullable
              as PublicProfile?,
      primarySplits: null == primarySplits
          ? _value.primarySplits
          : primarySplits // ignore: cast_nullable_to_non_nullable
              as List<PublicProfile>,
      secondarySplits: freezed == secondarySplits
          ? _value.secondarySplits
          : secondarySplits // ignore: cast_nullable_to_non_nullable
              as List<PublicProfile>?,
      splitBalances: null == splitBalances
          ? _value.splitBalances
          : splitBalances // ignore: cast_nullable_to_non_nullable
              as Map<PublicProfile, double>,
      paymentResolveStatuses: null == paymentResolveStatuses
          ? _value.paymentResolveStatuses
          : paymentResolveStatuses // ignore: cast_nullable_to_non_nullable
              as Map<PublicProfile, double>,
      everythingElse: null == everythingElse
          ? _value.everythingElse
          : everythingElse // ignore: cast_nullable_to_non_nullable
              as EverythingElseItemGroup,
      itemGroups: null == itemGroups
          ? _value.itemGroups
          : itemGroups // ignore: cast_nullable_to_non_nullable
              as List<ItemGroup>,
      taxModule: null == taxModule
          ? _value.taxModule
          : taxModule // ignore: cast_nullable_to_non_nullable
              as BillModule_Tax,
      tipModule: null == tipModule
          ? _value.tipModule
          : tipModule // ignore: cast_nullable_to_non_nullable
              as BillModule_Tip,
      lastUpdatedSession: null == lastUpdatedSession
          ? _value.lastUpdatedSession
          : lastUpdatedSession // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicProfileCopyWith<$Res>? get payer {
    if (_value.payer == null) {
      return null;
    }

    return $PublicProfileCopyWith<$Res>(_value.payer!, (value) {
      return _then(_value.copyWith(payer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EverythingElseItemGroupCopyWith<$Res> get everythingElse {
    return $EverythingElseItemGroupCopyWith<$Res>(_value.everythingElse,
        (value) {
      return _then(_value.copyWith(everythingElse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BillModule_TaxCopyWith<$Res> get taxModule {
    return $BillModule_TaxCopyWith<$Res>(_value.taxModule, (value) {
      return _then(_value.copyWith(taxModule: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BillModule_TipCopyWith<$Res> get tipModule {
    return $BillModule_TipCopyWith<$Res>(_value.tipModule, (value) {
      return _then(_value.copyWith(tipModule: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BillDataImplCopyWith<$Res>
    implements $BillDataCopyWith<$Res> {
  factory _$$BillDataImplCopyWith(
          _$BillDataImpl value, $Res Function(_$BillDataImpl) then) =
      __$$BillDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      DateTime dateTime,
      String name,
      double totalSpent,
      PublicProfile? payer,
      List<PublicProfile> primarySplits,
      List<PublicProfile>? secondarySplits,
      Map<PublicProfile, double> splitBalances,
      Map<PublicProfile, double> paymentResolveStatuses,
      EverythingElseItemGroup everythingElse,
      List<ItemGroup> itemGroups,
      BillModule_Tax taxModule,
      BillModule_Tip tipModule,
      DateTime lastUpdatedSession});

  @override
  $PublicProfileCopyWith<$Res>? get payer;
  @override
  $EverythingElseItemGroupCopyWith<$Res> get everythingElse;
  @override
  $BillModule_TaxCopyWith<$Res> get taxModule;
  @override
  $BillModule_TipCopyWith<$Res> get tipModule;
}

/// @nodoc
class __$$BillDataImplCopyWithImpl<$Res>
    extends _$BillDataCopyWithImpl<$Res, _$BillDataImpl>
    implements _$$BillDataImplCopyWith<$Res> {
  __$$BillDataImplCopyWithImpl(
      _$BillDataImpl _value, $Res Function(_$BillDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? dateTime = null,
    Object? name = null,
    Object? totalSpent = null,
    Object? payer = freezed,
    Object? primarySplits = null,
    Object? secondarySplits = freezed,
    Object? splitBalances = null,
    Object? paymentResolveStatuses = null,
    Object? everythingElse = null,
    Object? itemGroups = null,
    Object? taxModule = null,
    Object? tipModule = null,
    Object? lastUpdatedSession = null,
  }) {
    return _then(_$BillDataImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
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
      payer: freezed == payer
          ? _value.payer
          : payer // ignore: cast_nullable_to_non_nullable
              as PublicProfile?,
      primarySplits: null == primarySplits
          ? _value.primarySplits
          : primarySplits // ignore: cast_nullable_to_non_nullable
              as List<PublicProfile>,
      secondarySplits: freezed == secondarySplits
          ? _value.secondarySplits
          : secondarySplits // ignore: cast_nullable_to_non_nullable
              as List<PublicProfile>?,
      splitBalances: null == splitBalances
          ? _value.splitBalances
          : splitBalances // ignore: cast_nullable_to_non_nullable
              as Map<PublicProfile, double>,
      paymentResolveStatuses: null == paymentResolveStatuses
          ? _value.paymentResolveStatuses
          : paymentResolveStatuses // ignore: cast_nullable_to_non_nullable
              as Map<PublicProfile, double>,
      everythingElse: null == everythingElse
          ? _value.everythingElse
          : everythingElse // ignore: cast_nullable_to_non_nullable
              as EverythingElseItemGroup,
      itemGroups: null == itemGroups
          ? _value.itemGroups
          : itemGroups // ignore: cast_nullable_to_non_nullable
              as List<ItemGroup>,
      taxModule: null == taxModule
          ? _value.taxModule
          : taxModule // ignore: cast_nullable_to_non_nullable
              as BillModule_Tax,
      tipModule: null == tipModule
          ? _value.tipModule
          : tipModule // ignore: cast_nullable_to_non_nullable
              as BillModule_Tip,
      lastUpdatedSession: null == lastUpdatedSession
          ? _value.lastUpdatedSession
          : lastUpdatedSession // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$BillDataImpl extends _BillData {
  _$BillDataImpl(
      {required this.uid,
      required this.dateTime,
      this.name = "New Bill",
      this.totalSpent = 0,
      this.payer,
      required this.primarySplits,
      this.secondarySplits,
      required this.splitBalances,
      required this.paymentResolveStatuses,
      required this.everythingElse,
      required this.itemGroups,
      required this.taxModule,
      required this.tipModule,
      required this.lastUpdatedSession})
      : assert(totalSpent >= 0),
        super._();

  @override
  String uid;
  @override
  DateTime dateTime;
  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  double totalSpent;
  @override
  PublicProfile? payer;
  @override
  List<PublicProfile> primarySplits;
  @override
  List<PublicProfile>? secondarySplits;
  @override
  Map<PublicProfile, double> splitBalances;
  @override
  Map<PublicProfile, double> paymentResolveStatuses;
//
  @override
  EverythingElseItemGroup everythingElse;
  @override
  List<ItemGroup> itemGroups;
  @override
  BillModule_Tax taxModule;
  @override
  BillModule_Tip tipModule;
  @override
  DateTime lastUpdatedSession;

  @override
  String toString() {
    return 'BillData(uid: $uid, dateTime: $dateTime, name: $name, totalSpent: $totalSpent, payer: $payer, primarySplits: $primarySplits, secondarySplits: $secondarySplits, splitBalances: $splitBalances, paymentResolveStatuses: $paymentResolveStatuses, everythingElse: $everythingElse, itemGroups: $itemGroups, taxModule: $taxModule, tipModule: $tipModule, lastUpdatedSession: $lastUpdatedSession)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillDataImplCopyWith<_$BillDataImpl> get copyWith =>
      __$$BillDataImplCopyWithImpl<_$BillDataImpl>(this, _$identity);
}

abstract class _BillData extends BillData {
  factory _BillData(
      {required String uid,
      required DateTime dateTime,
      String name,
      double totalSpent,
      PublicProfile? payer,
      required List<PublicProfile> primarySplits,
      List<PublicProfile>? secondarySplits,
      required Map<PublicProfile, double> splitBalances,
      required Map<PublicProfile, double> paymentResolveStatuses,
      required EverythingElseItemGroup everythingElse,
      required List<ItemGroup> itemGroups,
      required BillModule_Tax taxModule,
      required BillModule_Tip tipModule,
      required DateTime lastUpdatedSession}) = _$BillDataImpl;
  _BillData._() : super._();

  @override
  String get uid;
  set uid(String value);
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
  PublicProfile? get payer;
  set payer(PublicProfile? value);
  @override
  List<PublicProfile> get primarySplits;
  set primarySplits(List<PublicProfile> value);
  @override
  List<PublicProfile>? get secondarySplits;
  set secondarySplits(List<PublicProfile>? value);
  @override
  Map<PublicProfile, double> get splitBalances;
  set splitBalances(Map<PublicProfile, double> value);
  @override
  Map<PublicProfile, double> get paymentResolveStatuses;
  set paymentResolveStatuses(Map<PublicProfile, double> value);
  @override //
  EverythingElseItemGroup get everythingElse; //
  set everythingElse(EverythingElseItemGroup value);
  @override
  List<ItemGroup> get itemGroups;
  set itemGroups(List<ItemGroup> value);
  @override
  BillModule_Tax get taxModule;
  set taxModule(BillModule_Tax value);
  @override
  BillModule_Tip get tipModule;
  set tipModule(BillModule_Tip value);
  @override
  DateTime get lastUpdatedSession;
  set lastUpdatedSession(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$BillDataImplCopyWith<_$BillDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
