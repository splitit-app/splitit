import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend.freezed.dart';
part 'friend.g.dart';

@freezed
class Friend with _$Friend {
  factory Friend({
    required String name,
  }) = _Friend;

  factory Friend.fromJson(Map<String, dynamic> json) => _$FriendFromJson(json);
}
