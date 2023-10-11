// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillDataDTO _$BillDataDTOFromJson(Map<String, dynamic> json) {
  return _BillDataDTO.fromJson(json);
}

/// @nodoc
mixin _$BillDataDTO {
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get totalSpent => throw _privateConstructorUsedError; //
  PublicProfile get payer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillDataDTOCopyWith<BillDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillDataDTOCopyWith<$Res> {
  factory $BillDataDTOCopyWith(
          BillDataDTO value, $Res Function(BillDataDTO) then) =
      _$BillDataDTOCopyWithImpl<$Res, BillDataDTO>;
  @useResult
  $Res call(
      {DateTime dateTime, String name, double totalSpent, PublicProfile payer});

  $PublicProfileCopyWith<$Res> get payer;
}

/// @nodoc
class _$BillDataDTOCopyWithImpl<$Res, $Val extends BillDataDTO>
    implements $BillDataDTOCopyWith<$Res> {
  _$BillDataDTOCopyWithImpl(this._value, this._then);

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
              as PublicProfile,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicProfileCopyWith<$Res> get payer {
    return $PublicProfileCopyWith<$Res>(_value.payer, (value) {
      return _then(_value.copyWith(payer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BillDataDTOCopyWith<$Res>
    implements $BillDataDTOCopyWith<$Res> {
  factory _$$_BillDataDTOCopyWith(
          _$_BillDataDTO value, $Res Function(_$_BillDataDTO) then) =
      __$$_BillDataDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime dateTime, String name, double totalSpent, PublicProfile payer});

  @override
  $PublicProfileCopyWith<$Res> get payer;
}

/// @nodoc
class __$$_BillDataDTOCopyWithImpl<$Res>
    extends _$BillDataDTOCopyWithImpl<$Res, _$_BillDataDTO>
    implements _$$_BillDataDTOCopyWith<$Res> {
  __$$_BillDataDTOCopyWithImpl(
      _$_BillDataDTO _value, $Res Function(_$_BillDataDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? name = null,
    Object? totalSpent = null,
    Object? payer = null,
  }) {
    return _then(_$_BillDataDTO(
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
              as PublicProfile,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BillDataDTO extends _BillDataDTO {
  _$_BillDataDTO(
      {required this.dateTime,
      required this.name,
      required this.totalSpent,
      required this.payer})
      : super._();

  factory _$_BillDataDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BillDataDTOFromJson(json);

  @override
  final DateTime dateTime;
  @override
  final String name;
  @override
  final double totalSpent;
//
  @override
  final PublicProfile payer;

  @override
  String toString() {
    return 'BillDataDTO(dateTime: $dateTime, name: $name, totalSpent: $totalSpent, payer: $payer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillDataDTO &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalSpent, totalSpent) ||
                other.totalSpent == totalSpent) &&
            (identical(other.payer, payer) || other.payer == payer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dateTime, name, totalSpent, payer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillDataDTOCopyWith<_$_BillDataDTO> get copyWith =>
      __$$_BillDataDTOCopyWithImpl<_$_BillDataDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillDataDTOToJson(
      this,
    );
  }
}

abstract class _BillDataDTO extends BillDataDTO {
  factory _BillDataDTO(
      {required final DateTime dateTime,
      required final String name,
      required final double totalSpent,
      required final PublicProfile payer}) = _$_BillDataDTO;
  _BillDataDTO._() : super._();

  factory _BillDataDTO.fromJson(Map<String, dynamic> json) =
      _$_BillDataDTO.fromJson;

  @override
  DateTime get dateTime;
  @override
  String get name;
  @override
  double get totalSpent;
  @override //
  PublicProfile get payer;
  @override
  @JsonKey(ignore: true)
  _$$_BillDataDTOCopyWith<_$_BillDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
