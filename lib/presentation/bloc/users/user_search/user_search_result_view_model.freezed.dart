// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_search_result_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserSearchResultViewModelTearOff {
  const _$UserSearchResultViewModelTearOff();

// ignore: unused_element
  _UserSearchResultViewModel call(
      {String fullName, String avatarUrl, String email}) {
    return _UserSearchResultViewModel(
      fullName: fullName,
      avatarUrl: avatarUrl,
      email: email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserSearchResultViewModel = _$UserSearchResultViewModelTearOff();

/// @nodoc
mixin _$UserSearchResultViewModel {
  String get fullName;
  String get avatarUrl;
  String get email;

  @JsonKey(ignore: true)
  $UserSearchResultViewModelCopyWith<UserSearchResultViewModel> get copyWith;
}

/// @nodoc
abstract class $UserSearchResultViewModelCopyWith<$Res> {
  factory $UserSearchResultViewModelCopyWith(UserSearchResultViewModel value,
          $Res Function(UserSearchResultViewModel) then) =
      _$UserSearchResultViewModelCopyWithImpl<$Res>;
  $Res call({String fullName, String avatarUrl, String email});
}

/// @nodoc
class _$UserSearchResultViewModelCopyWithImpl<$Res>
    implements $UserSearchResultViewModelCopyWith<$Res> {
  _$UserSearchResultViewModelCopyWithImpl(this._value, this._then);

  final UserSearchResultViewModel _value;
  // ignore: unused_field
  final $Res Function(UserSearchResultViewModel) _then;

  @override
  $Res call({
    Object fullName = freezed,
    Object avatarUrl = freezed,
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
abstract class _$UserSearchResultViewModelCopyWith<$Res>
    implements $UserSearchResultViewModelCopyWith<$Res> {
  factory _$UserSearchResultViewModelCopyWith(_UserSearchResultViewModel value,
          $Res Function(_UserSearchResultViewModel) then) =
      __$UserSearchResultViewModelCopyWithImpl<$Res>;
  @override
  $Res call({String fullName, String avatarUrl, String email});
}

/// @nodoc
class __$UserSearchResultViewModelCopyWithImpl<$Res>
    extends _$UserSearchResultViewModelCopyWithImpl<$Res>
    implements _$UserSearchResultViewModelCopyWith<$Res> {
  __$UserSearchResultViewModelCopyWithImpl(_UserSearchResultViewModel _value,
      $Res Function(_UserSearchResultViewModel) _then)
      : super(_value, (v) => _then(v as _UserSearchResultViewModel));

  @override
  _UserSearchResultViewModel get _value =>
      super._value as _UserSearchResultViewModel;

  @override
  $Res call({
    Object fullName = freezed,
    Object avatarUrl = freezed,
    Object email = freezed,
  }) {
    return _then(_UserSearchResultViewModel(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_UserSearchResultViewModel extends _UserSearchResultViewModel {
  const _$_UserSearchResultViewModel(
      {this.fullName, this.avatarUrl, this.email})
      : super._();

  @override
  final String fullName;
  @override
  final String avatarUrl;
  @override
  final String email;

  @override
  String toString() {
    return 'UserSearchResultViewModel(fullName: $fullName, avatarUrl: $avatarUrl, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserSearchResultViewModel &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$UserSearchResultViewModelCopyWith<_UserSearchResultViewModel>
      get copyWith =>
          __$UserSearchResultViewModelCopyWithImpl<_UserSearchResultViewModel>(
              this, _$identity);
}

abstract class _UserSearchResultViewModel extends UserSearchResultViewModel {
  const _UserSearchResultViewModel._() : super._();
  const factory _UserSearchResultViewModel(
      {String fullName,
      String avatarUrl,
      String email}) = _$_UserSearchResultViewModel;

  @override
  String get fullName;
  @override
  String get avatarUrl;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$UserSearchResultViewModelCopyWith<_UserSearchResultViewModel> get copyWith;
}
