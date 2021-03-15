// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {String imageUrl, String userName, String fullName, String profileUrl}) {
    return _User(
      imageUrl: imageUrl,
      userName: userName,
      fullName: fullName,
      profileUrl: profileUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get imageUrl;
  String get userName;
  String get fullName;
  String get profileUrl;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String imageUrl, String userName, String fullName, String profileUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object imageUrl = freezed,
    Object userName = freezed,
    Object fullName = freezed,
    Object profileUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      userName: userName == freezed ? _value.userName : userName as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      profileUrl:
          profileUrl == freezed ? _value.profileUrl : profileUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String imageUrl, String userName, String fullName, String profileUrl});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object imageUrl = freezed,
    Object userName = freezed,
    Object fullName = freezed,
    Object profileUrl = freezed,
  }) {
    return _then(_User(
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      userName: userName == freezed ? _value.userName : userName as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      profileUrl:
          profileUrl == freezed ? _value.profileUrl : profileUrl as String,
    ));
  }
}

/// @nodoc
class _$_User implements _User {
  const _$_User({this.imageUrl, this.userName, this.fullName, this.profileUrl});

  @override
  final String imageUrl;
  @override
  final String userName;
  @override
  final String fullName;
  @override
  final String profileUrl;

  @override
  String toString() {
    return 'User(imageUrl: $imageUrl, userName: $userName, fullName: $fullName, profileUrl: $profileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.profileUrl, profileUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profileUrl, profileUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(profileUrl);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {String imageUrl,
      String userName,
      String fullName,
      String profileUrl}) = _$_User;

  @override
  String get imageUrl;
  @override
  String get userName;
  @override
  String get fullName;
  @override
  String get profileUrl;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
