part of 'user_search_bloc.dart';

@freezed
abstract class UserSearchState with _$UserSearchState {
  const factory UserSearchState.initial() = _Inital;

  const factory UserSearchState.searching() = _Searching;

  const factory UserSearchState.notFound({String query}) = _NotFound;

  const factory UserSearchState.firstLoaded({List<UserSearchResultViewModel> list}) = _FirstLoaded;

  const factory UserSearchState.moreLoaded({List<UserSearchResultViewModel> list}) = _MoreLoaded;
}
