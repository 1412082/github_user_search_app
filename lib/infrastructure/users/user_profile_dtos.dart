import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_user_search_app/domain/users/user_profile.dart';

part 'user_profile_dtos.freezed.dart';

part 'user_profile_dtos.g.dart';

@freezed
abstract class UserProfileDto implements _$UserProfileDto {
  const factory UserProfileDto({
    String company,
    String blog,
    String location,
    String email,
    String name,
    int following,
    int followers,
  }) = _UserProfileDto;

  const UserProfileDto._();

  factory UserProfileDto.fromJson(Map<String, dynamic> json) => _$UserProfileDtoFromJson(json);

  /// Convert to domain model.
  UserProfile toDomain() => UserProfile(
        company: company,
        email: email,
        blog: blog,
        location: location,
        name: name,
        following: following,
        followers: followers,
      );
}
