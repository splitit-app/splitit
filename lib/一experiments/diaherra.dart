import 'package:freezed_annotation/freezed_annotation.dart';

part 'diaherra.freezed.dart';
part 'diaherra.g.dart';

@freezed
class Diaherra with _$Diaherra {
  factory Diaherra({
    required String a,
    required int b,
  }) = _Diaherra;
  Diaherra._();

  int doItStinkDoe() => 1;
  
  factory Diaherra.fromJson(Map<String, dynamic> json) =>
			_$DiaherraFromJson(json);
      
}
