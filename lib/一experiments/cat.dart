import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat.freezed.dart';
part 'cat.g.dart';

@freezed
class Cat with _$Cat {
  factory Cat({
   required int pus,
  }) = _Cat;
  Cat._();

  int catMeow() => 1;

  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);
}
