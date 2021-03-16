part of 'search_result_actor_bloc.dart';

@freezed
abstract class SearchResultActorEvent with _$SearchResultActorEvent {
  const factory SearchResultActorEvent.onFollow() = _OnFollow;
  const factory SearchResultActorEvent.onUnFollow() = _OnUnFollow;
}
