part of 'search_result_actor_bloc.dart';

@freezed
abstract class SearchResultActorState with _$SearchResultActorState {
  const factory SearchResultActorState.inital() = _Initial;
}
