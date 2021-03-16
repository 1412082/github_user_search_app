part of 'user_profile_bloc.dart';

@freezed
abstract class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.onFetchProfile({String userName}) = _OnFetchProfile;
}
