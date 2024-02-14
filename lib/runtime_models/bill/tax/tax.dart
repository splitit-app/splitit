import 'package:freezed_annotation/freezed_annotation.dart';

part 'tax.freezed.dart';
part 'tax.g.dart';

@unfreezed
class Tax with _$Tax {
  @Assert('value >= 0')
  factory Tax({
    @Default('New Item') String name,
    @Default(0) double value,
    @Default(true) bool includedInTotal,
  }) = _Tax;

  factory Tax.fromJson(Map<String, dynamic> json) => _$TaxFromJson(json);
}
