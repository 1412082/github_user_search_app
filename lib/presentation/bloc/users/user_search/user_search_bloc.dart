import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_user_search_app/domain/users/i_user_repository.dart';
import 'package:github_user_search_app/presentation/bloc/users/user_search/user_search_result_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

part 'user_search_event.dart';

part 'user_search_state.dart';

part 'user_search_bloc.freezed.dart';

@injectable
class UserSearchBloc extends Bloc<UserSearchEvent, UserSearchState> {
  final IUserRepository _userRepository;

  /// Stream to debounce search query changed event
  final _searchStreamController = StreamController<String>();

  StreamSubscription _searchSubscription;

  UserSearchBloc(this._userRepository) : super(const UserSearchState.initial()) {
    _searchStreamController.stream.debounceTime(const Duration(seconds: 1)).listen((query) async {
      if (_searchSubscription != null) {
        // Cancel last request and create new one.
        await _searchSubscription.cancel();
      }
      add(UserSearchEvent.changeQuery(newQuery: query));
    });
  }

  @override
  Stream<UserSearchState> mapEventToState(
    UserSearchEvent event,
  ) async* {
    yield* event.map(
        changeQuery: (changedEvent) async* {
          yield await _searchUser(query: changedEvent.newQuery);
        },
        clearQuery: (clearEvent) async* {});
  }

  /// Send query to debounced stream to prevent server spam.
  void debounceQueryChangedEvent({String newQuery}) => _searchStreamController.sink.add(newQuery);

  Future<UserSearchState> _searchUser({String query}) {
    final completer = Completer<UserSearchState>();
    _searchSubscription = _userRepository.searchUsers(query: query).doOnListen(() {
      var a;
    }).doOnDone(() {
      var a;
    }).doOnData(
      (listUser) {
        completer.complete(UserSearchState.firstLoaded(
            list: listUser.map((user) => UserSearchResultViewModel.fromDomain(domainUser: user)).toList()));
      },
    ).doOnError(
      (error, stacktrace) {
        completer.complete(UserSearchState.notFound(query: query));
      },
    ).listen(null);
    return completer.future;
  }
}
