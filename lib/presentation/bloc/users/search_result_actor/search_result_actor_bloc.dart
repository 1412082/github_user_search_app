import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_result_actor_event.dart';
part 'search_result_actor_state.dart';
part 'search_result_actor_bloc.freezed.dart';

@injectable
class SearchResultActorBloc extends Bloc<SearchResultActorEvent, SearchResultActorState> {
  SearchResultActorBloc() : super(const SearchResultActorState.initial());

  @override
  Stream<SearchResultActorState> mapEventToState(
    SearchResultActorEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
