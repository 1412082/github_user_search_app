// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserProfileTearOff {
  const _$UserProfileTearOff();

// ignore: unused_element
  _UserProfile call(
      {String name,
      String company,
      String blog,
      String location,
      String email,
      int following,
      int followers}) {
    return _UserProfile(
      name: name,
      company: company,
      blog: blog,
      location: location,
      email: email,
      following: following,
      followers: followers,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfile = _$UserProfileTearOff();

/// @nodoc
mixin _$UserProfile {
  String get name;
  String get company;
  String get blog;
  String get location;
  String get email;
  int get following;
  int get followers;

  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String company,
      String blog,
      String location,
      String email,
      int following,
      int followers});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  final UserProfile _value;
  // ignore: unused_field
  final $Res Function(UserProfile) _then;

  @override
  $Res call({
    Object name = freezed,
    Object company = freezed,
    Object blog = freezed,
    Object location = freezed,
    Object email = freezed,
    Object following = freezed,
    Object followers = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      company: company == freezed ? _value.company : company as String,
      blog: blog == freezed ? _value.blog : blog as String,
      location: location == freezed ? _value.location : location as String,
      email: email == freezed ? _value.email : email as String,
      following: following == freezed ? _value.following : following as int,
      followers: followers == freezed ? _value.followers : followers as int,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) then) =
      __$UserProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String company,
      String blog,
      String location,
      String email,
      int following,
      int followers});
}

/// @nodoc
class __$UserProfileCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(
      _UserProfile _value, $Res Function(_UserProfile) _then)
      : super(_value, (v) => _then(v as _UserProfile));

  @override
  _UserProfile get _value => super._value as _UserProfile;

  @override
  $Res call({
    Object name = freezed,
    Object company = freezed,
    Object blog = freezed,
    Object location = freezed,
    Object email = freezed,
    Object following = freezed,
    Object followers = freezed,
  }) {
    return _then(_UserProfile(
      name: name == freezed ? _value.name : name as String,
      company: company == freezed ? _value.company : company as String,
      blog: blog == freezed ? _value.blog : blog as String,
      location: location == freezed ? _value.location : location as String,
      email: email == freezed ? _value.email : email as String,
      following: following == freezed ? _value.following : following as int,
      followers: followers == freezed ? _value.followers : followers as int,
    ));
  }
}

/// @nodoc
class _$_UserProfile implements _UserProfile {
  _$_UserProfile(
      {this.name,
      this.company,
      this.blog,
      this.location,
      this.email,
      this.following,
      this.followers});

  @override
  final String name;
  @override
  final String company;
  @override
  final String blog;
  @override
  final String location;
  @override
  final String email;
  @override
  final int following;
  @override
  final int followers;

  @override
  String toString() {
    return 'UserProfile(name: $name, company: $company, blog: $blog, location: $location, email: $email, following: $following, followers: $followers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfile &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(blog) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(following) ^
      const DeepCollectionEquality().hash(followers);

  @JsonKey(ignore: true)
  @override
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);
}

abstract class _UserProfile implements UserProfile {
  factory _UserProfile(
      {String name,
      String company,
      String blog,
      String location,
      String email,
      int following,
      int followers}) = _$_UserProfile;

  @override
  String get name;
  @override
  String get company;
  @override
  String get blog;
  @override
  String get location;
  @override
  String get email;
  @override
  int get following;
  @override
  int get followers;
  @override
  @JsonKey(ignore: true)
  _$UserProfileCopyWith<_UserProfile> get copyWith;
}
