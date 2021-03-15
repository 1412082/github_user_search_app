import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
@freezed
abstract class User with _$User {
  const factory User({
    String imageUrl,
    String userName,
    String fullName,
    String profileUrl,
  }) = _User;

}
