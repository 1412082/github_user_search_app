import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_user_search_app/domain/users/i_user_repository.dart';
import 'package:github_user_search_app/domain/users/user_profile.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

part 'user_profile_bloc.freezed.dart';

part 'user_profile_event.dart';

part 'user_profile_state.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final IUserRepository userRepository;

  UserProfileBloc({@required this.userRepository, @required String username}) : super(const UserProfileState.initial()) {
    add(UserProfileEvent.onFetchProfile(userName: username));
  }

  @override
  Stream<UserProfileState> mapEventToState(UserProfileEvent event) async* {
    yield* event.map(onFetchProfile: (fetchEvent) async* {
      yield* userRepository.getUserProfile(username: fetchEvent.userName).flatMap((profile) => Stream.value(UserProfileState.loaded(profile: profile)));
    });
  }
}
