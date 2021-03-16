// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

// ignore: unused_element
  _UserDto call(
      {@JsonKey(name: 'login') String userName,
      @JsonKey(name: 'avatar_url') String avatarUrl,
      String url,
      @JsonKey(name: 'html_url') String htmlUrl}) {
    return _UserDto(
      userName: userName,
      avatarUrl: avatarUrl,
      url: url,
      htmlUrl: htmlUrl,
    );
  }

// ignore: unused_element
  UserDto fromJson(Map<String, Object> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  @JsonKey(name: 'login')
  String get userName;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;
  String get url;
  @JsonKey(name: 'html_url')
  String get htmlUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'login') String userName,
      @JsonKey(name: 'avatar_url') String avatarUrl,
      String url,
      @JsonKey(name: 'html_url') String htmlUrl});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object userName = freezed,
    Object avatarUrl = freezed,
    Object url = freezed,
    Object htmlUrl = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed ? _value.userName : userName as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      url: url == freezed ? _value.url : url as String,
      htmlUrl: htmlUrl == freezed ? _value.htmlUrl : htmlUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'login') String userName,
      @JsonKey(name: 'avatar_url') String avatarUrl,
      String url,
      @JsonKey(name: 'html_url') String htmlUrl});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object userName = freezed,
    Object avatarUrl = freezed,
    Object url = freezed,
    Object htmlUrl = freezed,
  }) {
    return _then(_UserDto(
      userName: userName == freezed ? _value.userName : userName as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      url: url == freezed ? _value.url : url as String,
      htmlUrl: htmlUrl == freezed ? _value.htmlUrl : htmlUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {@JsonKey(name: 'login') this.userName,
      @JsonKey(name: 'avatar_url') this.avatarUrl,
      this.url,
      @JsonKey(name: 'html_url') this.htmlUrl})
      : super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  @JsonKey(name: 'login')
  final String userName;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;
  @override
  final String url;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;

  @override
  String toString() {
    return 'UserDto(userName: $userName, avatarUrl: $avatarUrl, url: $url, htmlUrl: $htmlUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.htmlUrl, htmlUrl) ||
                const DeepCollectionEquality().equals(other.htmlUrl, htmlUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(htmlUrl);

  @JsonKey(ignore: true)
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const _UserDto._() : super._();
  const factory _UserDto(
      {@JsonKey(name: 'login') String userName,
      @JsonKey(name: 'avatar_url') String avatarUrl,
      String url,
      @JsonKey(name: 'html_url') String htmlUrl}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @JsonKey(name: 'login')
  String get userName;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;
  @override
  String get url;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith;
}
