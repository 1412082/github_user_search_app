// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_profile_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserProfileDto _$UserProfileDtoFromJson(Map<String, dynamic> json) {
  return _UserProfileDto.fromJson(json);
}

/// @nodoc
class _$UserProfileDtoTearOff {
  const _$UserProfileDtoTearOff();

// ignore: unused_element
  _UserProfileDto call(
      {String company,
      String blog,
      String location,
      String email,
      String name,
      int following,
      int followers}) {
    return _UserProfileDto(
      company: company,
      blog: blog,
      location: location,
      email: email,
      name: name,
      following: following,
      followers: followers,
    );
  }

// ignore: unused_element
  UserProfileDto fromJson(Map<String, Object> json) {
    return UserProfileDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfileDto = _$UserProfileDtoTearOff();

/// @nodoc
mixin _$UserProfileDto {
  String get company;
  String get blog;
  String get location;
  String get email;
  String get name;
  int get following;
  int get followers;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserProfileDtoCopyWith<UserProfileDto> get copyWith;
}

/// @nodoc
abstract class $UserProfileDtoCopyWith<$Res> {
  factory $UserProfileDtoCopyWith(
          UserProfileDto value, $Res Function(UserProfileDto) then) =
      _$UserProfileDtoCopyWithImpl<$Res>;
  $Res call(
      {String company,
      String blog,
      String location,
      String email,
      String name,
      int following,
      int followers});
}

/// @nodoc
class _$UserProfileDtoCopyWithImpl<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  _$UserProfileDtoCopyWithImpl(this._value, this._then);

  final UserProfileDto _value;
  // ignore: unused_field
  final $Res Function(UserProfileDto) _then;

  @override
  $Res call({
    Object company = freezed,
    Object blog = freezed,
    Object location = freezed,
    Object email = freezed,
    Object name = freezed,
    Object following = freezed,
    Object followers = freezed,
  }) {
    return _then(_value.copyWith(
      company: company == freezed ? _value.company : company as String,
      blog: blog == freezed ? _value.blog : blog as String,
      location: location == freezed ? _value.location : location as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      following: following == freezed ? _value.following : following as int,
      followers: followers == freezed ? _value.followers : followers as int,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileDtoCopyWith<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  factory _$UserProfileDtoCopyWith(
          _UserProfileDto value, $Res Function(_UserProfileDto) then) =
      __$UserProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String company,
      String blog,
      String location,
      String email,
      String name,
      int following,
      int followers});
}

/// @nodoc
class __$UserProfileDtoCopyWithImpl<$Res>
    extends _$UserProfileDtoCopyWithImpl<$Res>
    implements _$UserProfileDtoCopyWith<$Res> {
  __$UserProfileDtoCopyWithImpl(
      _UserProfileDto _value, $Res Function(_UserProfileDto) _then)
      : super(_value, (v) => _then(v as _UserProfileDto));

  @override
  _UserProfileDto get _value => super._value as _UserProfileDto;

  @override
  $Res call({
    Object company = freezed,
    Object blog = freezed,
    Object location = freezed,
    Object email = freezed,
    Object name = freezed,
    Object following = freezed,
    Object followers = freezed,
  }) {
    return _then(_UserProfileDto(
      company: company == freezed ? _value.company : company as String,
      blog: blog == freezed ? _value.blog : blog as String,
      location: location == freezed ? _value.location : location as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      following: following == freezed ? _value.following : following as int,
      followers: followers == freezed ? _value.followers : followers as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserProfileDto extends _UserProfileDto {
  const _$_UserProfileDto(
      {this.company,
      this.blog,
      this.location,
      this.email,
      this.name,
      this.following,
      this.followers})
      : super._();

  factory _$_UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserProfileDtoFromJson(json);

  @override
  final String company;
  @override
  final String blog;
  @override
  final String location;
  @override
  final String email;
  @override
  final String name;
  @override
  final int following;
  @override
  final int followers;

  @override
  String toString() {
    return 'UserProfileDto(company: $company, blog: $blog, location: $location, email: $email, name: $name, following: $following, followers: $followers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfileDto &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.blog, blog) ||
                const DeepCollectionEquality().equals(other.blog, blog)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.following, following) ||
                const DeepCollectionEquality()
                    .equals(other.following, following)) &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(blog) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(following) ^
      const DeepCollectionEquality().hash(followers);

  @JsonKey(ignore: true)
  @override
  _$UserProfileDtoCopyWith<_UserProfileDto> get copyWith =>
      __$UserProfileDtoCopyWithImpl<_UserProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserProfileDtoToJson(this);
  }
}

abstract class _UserProfileDto extends UserProfileDto {
  const _UserProfileDto._() : super._();
  const factory _UserProfileDto(
      {String company,
      String blog,
      String location,
      String email,
      String name,
      int following,
      int followers}) = _$_UserProfileDto;

  factory _UserProfileDto.fromJson(Map<String, dynamic> json) =
      _$_UserProfileDto.fromJson;

  @override
  String get company;
  @override
  String get blog;
  @override
  String get location;
  @override
  String get email;
  @override
  String get name;
  @override
  int get following;
  @override
  int get followers;
  @override
  @JsonKey(ignore: true)
  _$UserProfileDtoCopyWith<_UserProfileDto> get copyWith;
}
