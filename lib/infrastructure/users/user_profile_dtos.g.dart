// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileDto _$_$_UserProfileDtoFromJson(Map<String, dynamic> json) {
  return _$_UserProfileDto(
    company: json['company'] as String,
    blog: json['blog'] as String,
    location: json['location'] as String,
    email: json['email'] as String,
    name: json['name'] as String,
    following: json['following'] as int,
    followers: json['followers'] as int,
  );
}

Map<String, dynamic> _$_$_UserProfileDtoToJson(_$_UserProfileDto instance) =>
    <String, dynamic>{
      'company': instance.company,
      'blog': instance.blog,
      'location': instance.location,
      'email': instance.email,
      'name': instance.name,
      'following': instance.following,
      'followers': instance.followers,
    };
