import 'package:freezed_annotation/freezed_annotation.dart';

part 'split_rule.freezed.dart';
part 'split_rule.g.dart';

@freezed
class SplitRule with _$SplitRule {
  factory SplitRule({
    required int type, //TODO: placeholder parameter
  }) = _SplitRule;

  factory SplitRule.fromJson(Map<String, dynamic> json) =>
      _$SplitRuleFromJson(json);
}
