// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    userName: json['login'] as String,
    avatarUrl: json['avatar_url'] as String,
    url: json['url'] as String,
    htmlUrl: json['html_url'] as String,
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'login': instance.userName,
      'avatar_url': instance.avatarUrl,
      'url': instance.url,
      'html_url': instance.htmlUrl,
    };
