// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrivateProfileDTOImpl _$$PrivateProfileDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PrivateProfileDTOImpl(
      themeMode: $enumDecode(_$ThemeModeEnumMap, json['themeMode']),
    );

Map<String, dynamic> _$$PrivateProfileDTOImplToJson(
        _$PrivateProfileDTOImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
