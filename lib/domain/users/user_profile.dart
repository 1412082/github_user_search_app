import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';

@freezed
abstract class UserProfile with _$UserProfile {
  factory UserProfile({
    String name,
    String company,
    String blog,
    String location,
    String email,
    int following,
    int followers,
  }) = _UserProfile;
}
