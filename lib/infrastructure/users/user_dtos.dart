import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_user_search_app/domain/users/user.dart';

part 'user_dtos.freezed.dart';

part 'user_dtos.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const factory UserDto({
    @JsonKey(name: 'login') String userName,
    @JsonKey(name: 'avatar_url') String avatarUrl,
    String url,
    @JsonKey(name: 'html_url') String htmlUrl,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  /// Convert to domain model.
  User toDomain() => User(
        imageUrl: avatarUrl,
        profileUrl: url,
        fullName: userName,
        userName: userName,
      );
}
