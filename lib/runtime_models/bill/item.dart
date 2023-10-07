import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';

@freezed
class Item with _$Item {
  factory Item({
    @Default('New Item') String name,
    @Default(0) double value,
    required List<bool> taxableStatusList,
  }) = _Item;
}
