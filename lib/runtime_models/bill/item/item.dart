import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@unfreezed
class Item with _$Item {
  @Assert('value >= 0')
  factory Item({
    @Default('New Item') String name,
    @Default(0) double value,
    @Default(1) int quantity,
    required List<bool> taxableStatusList,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
