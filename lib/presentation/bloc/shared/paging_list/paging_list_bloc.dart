import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'paging_list_event.dart';
part 'paging_list_state.dart';

class PagingListBloc extends Bloc<PagingListEvent, PagingListState> {
  PagingListBloc() : super(PagingListInitial());

  @override
  Stream<PagingListState> mapEventToState(
    PagingListEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
