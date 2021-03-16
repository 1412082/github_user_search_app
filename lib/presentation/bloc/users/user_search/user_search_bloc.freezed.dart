// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserSearchEventTearOff {
  const _$UserSearchEventTearOff();

// ignore: unused_element
  _ChangeQuery changeQuery({String newQuery}) {
    return _ChangeQuery(
      newQuery: newQuery,
    );
  }

// ignore: unused_element
  _ClearQuery clearQuery() {
    return const _ClearQuery();
  }
}

/// @nodoc
// ignore: unused_element
const $UserSearchEvent = _$UserSearchEventTearOff();

/// @nodoc
mixin _$UserSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeQuery(String newQuery),
    @required TResult clearQuery(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeQuery(String newQuery),
    TResult clearQuery(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeQuery(_ChangeQuery value),
    @required TResult clearQuery(_ClearQuery value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeQuery(_ChangeQuery value),
    TResult clearQuery(_ClearQuery value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserSearchEventCopyWith<$Res> {
  factory $UserSearchEventCopyWith(
          UserSearchEvent value, $Res Function(UserSearchEvent) then) =
      _$UserSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSearchEventCopyWithImpl<$Res>
    implements $UserSearchEventCopyWith<$Res> {
  _$UserSearchEventCopyWithImpl(this._value, this._then);

  final UserSearchEvent _value;
  // ignore: unused_field
  final $Res Function(UserSearchEvent) _then;
}

/// @nodoc
abstract class _$ChangeQueryCopyWith<$Res> {
  factory _$ChangeQueryCopyWith(
          _ChangeQuery value, $Res Function(_ChangeQuery) then) =
      __$ChangeQueryCopyWithImpl<$Res>;
  $Res call({String newQuery});
}

/// @nodoc
class __$ChangeQueryCopyWithImpl<$Res>
    extends _$UserSearchEventCopyWithImpl<$Res>
    implements _$ChangeQueryCopyWith<$Res> {
  __$ChangeQueryCopyWithImpl(
      _ChangeQuery _value, $Res Function(_ChangeQuery) _then)
      : super(_value, (v) => _then(v as _ChangeQuery));

  @override
  _ChangeQuery get _value => super._value as _ChangeQuery;

  @override
  $Res call({
    Object newQuery = freezed,
  }) {
    return _then(_ChangeQuery(
      newQuery: newQuery == freezed ? _value.newQuery : newQuery as String,
    ));
  }
}

/// @nodoc
class _$_ChangeQuery extends _ChangeQuery {
  const _$_ChangeQuery({this.newQuery}) : super._();

  @override
  final String newQuery;

  @override
  String toString() {
    return 'UserSearchEvent.changeQuery(newQuery: $newQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeQuery &&
            (identical(other.newQuery, newQuery) ||
                const DeepCollectionEquality()
                    .equals(other.newQuery, newQuery)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newQuery);

  @JsonKey(ignore: true)
  @override
  _$ChangeQueryCopyWith<_ChangeQuery> get copyWith =>
      __$ChangeQueryCopyWithImpl<_ChangeQuery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeQuery(String newQuery),
    @required TResult clearQuery(),
  }) {
    assert(changeQuery != null);
    assert(clearQuery != null);
    return changeQuery(newQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeQuery(String newQuery),
    TResult clearQuery(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeQuery != null) {
      return changeQuery(newQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeQuery(_ChangeQuery value),
    @required TResult clearQuery(_ClearQuery value),
  }) {
    assert(changeQuery != null);
    assert(clearQuery != null);
    return changeQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeQuery(_ChangeQuery value),
    TResult clearQuery(_ClearQuery value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeQuery != null) {
      return changeQuery(this);
    }
    return orElse();
  }
}

abstract class _ChangeQuery extends UserSearchEvent {
  const _ChangeQuery._() : super._();
  const factory _ChangeQuery({String newQuery}) = _$_ChangeQuery;

  String get newQuery;
  @JsonKey(ignore: true)
  _$ChangeQueryCopyWith<_ChangeQuery> get copyWith;
}

/// @nodoc
abstract class _$ClearQueryCopyWith<$Res> {
  factory _$ClearQueryCopyWith(
          _ClearQuery value, $Res Function(_ClearQuery) then) =
      __$ClearQueryCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearQueryCopyWithImpl<$Res>
    extends _$UserSearchEventCopyWithImpl<$Res>
    implements _$ClearQueryCopyWith<$Res> {
  __$ClearQueryCopyWithImpl(
      _ClearQuery _value, $Res Function(_ClearQuery) _then)
      : super(_value, (v) => _then(v as _ClearQuery));

  @override
  _ClearQuery get _value => super._value as _ClearQuery;
}

/// @nodoc
class _$_ClearQuery extends _ClearQuery {
  const _$_ClearQuery() : super._();

  @override
  String toString() {
    return 'UserSearchEvent.clearQuery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClearQuery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changeQuery(String newQuery),
    @required TResult clearQuery(),
  }) {
    assert(changeQuery != null);
    assert(clearQuery != null);
    return clearQuery();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changeQuery(String newQuery),
    TResult clearQuery(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (clearQuery != null) {
      return clearQuery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changeQuery(_ChangeQuery value),
    @required TResult clearQuery(_ClearQuery value),
  }) {
    assert(changeQuery != null);
    assert(clearQuery != null);
    return clearQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changeQuery(_ChangeQuery value),
    TResult clearQuery(_ClearQuery value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (clearQuery != null) {
      return clearQuery(this);
    }
    return orElse();
  }
}

abstract class _ClearQuery extends UserSearchEvent {
  const _ClearQuery._() : super._();
  const factory _ClearQuery() = _$_ClearQuery;
}

/// @nodoc
class _$UserSearchStateTearOff {
  const _$UserSearchStateTearOff();

// ignore: unused_element
  _Inital initial() {
    return const _Inital();
  }

// ignore: unused_element
  _Searching searching() {
    return const _Searching();
  }

// ignore: unused_element
  _NotFound notFound({String query}) {
    return _NotFound(
      query: query,
    );
  }

// ignore: unused_element
  _FirstLoaded firstLoaded({List<UserSearchResultViewModel> list}) {
    return _FirstLoaded(
      list: list,
    );
  }

// ignore: unused_element
  _MoreLoaded moreLoaded({List<UserSearchResultViewModel> list}) {
    return _MoreLoaded(
      list: list,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserSearchState = _$UserSearchStateTearOff();

/// @nodoc
mixin _$UserSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult searching(),
    @required TResult notFound(String query),
    @required TResult firstLoaded(List<UserSearchResultViewModel> list),
    @required TResult moreLoaded(List<UserSearchResultViewModel> list),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult searching(),
    TResult notFound(String query),
    TResult firstLoaded(List<UserSearchResultViewModel> list),
    TResult moreLoaded(List<UserSearchResultViewModel> list),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Inital value),
    @required TResult searching(_Searching value),
    @required TResult notFound(_NotFound value),
    @required TResult firstLoaded(_FirstLoaded value),
    @required TResult moreLoaded(_MoreLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Inital value),
    TResult searching(_Searching value),
    TResult notFound(_NotFound value),
    TResult firstLoaded(_FirstLoaded value),
    TResult moreLoaded(_MoreLoaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserSearchStateCopyWith<$Res> {
  factory $UserSearchStateCopyWith(
          UserSearchState value, $Res Function(UserSearchState) then) =
      _$UserSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSearchStateCopyWithImpl<$Res>
    implements $UserSearchStateCopyWith<$Res> {
  _$UserSearchStateCopyWithImpl(this._value, this._then);

  final UserSearchState _value;
  // ignore: unused_field
  final $Res Function(UserSearchState) _then;
}

/// @nodoc
abstract class _$InitalCopyWith<$Res> {
  factory _$InitalCopyWith(_Inital value, $Res Function(_Inital) then) =
      __$InitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitalCopyWithImpl<$Res> extends _$UserSearchStateCopyWithImpl<$Res>
    implements _$InitalCopyWith<$Res> {
  __$InitalCopyWithImpl(_Inital _value, $Res Function(_Inital) _then)
      : super(_value, (v) => _then(v as _Inital));

  @override
  _Inital get _value => super._value as _Inital;
}

/// @nodoc
class _$_Inital implements _Inital {
  const _$_Inital();

  @override
  String toString() {
    return 'UserSearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Inital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult searching(),
    @required TResult notFound(String query),
    @required TResult firstLoaded(List<UserSearchResultViewModel> list),
    @required TResult moreLoaded(List<UserSearchResultViewModel> list),
  }) {
    assert(initial != null);
    assert(searching != null);
    assert(notFound != null);
    assert(firstLoaded != null);
    assert(moreLoaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult searching(),
    TResult notFound(String query),
    TResult firstLoaded(List<UserSearchResultViewModel> list),
    TResult moreLoaded(List<UserSearchResultViewModel> list),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Inital value),
    @required TResult searching(_Searching value),
    @required TResult notFound(_NotFound value),
    @required TResult firstLoaded(_FirstLoaded value),
    @required TResult moreLoaded(_MoreLoaded value),
  }) {
    assert(initial != null);
    assert(searching != null);
    assert(notFound != null);
    assert(firstLoaded != null);
    assert(moreLoaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Inital value),
    TResult searching(_Searching value),
    TResult notFound(_NotFound value),
    TResult firstLoaded(_FirstLoaded value),
    TResult moreLoaded(_MoreLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Inital implements UserSearchState {
  const factory _Inital() = _$_Inital;
}

/// @nodoc
abstract class _$SearchingCopyWith<$Res> {
  factory _$SearchingCopyWith(
          _Searching value, $Res Function(_Searching) then) =
      __$SearchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchingCopyWithImpl<$Res> extends _$UserSearchStateCopyWithImpl<$Res>
    implements _$SearchingCopyWith<$Res> {
  __$SearchingCopyWithImpl(_Searching _value, $Res Function(_Searching) _then)
      : super(_value, (v) => _then(v as _Searching));

  @override
  _Searching get _value => super._value as _Searching;
}

/// @nodoc
class _$_Searching implements _Searching {
  const _$_Searching();

  @override
  String toString() {
    return 'UserSearchState.searching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Searching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult searching(),
    @required TResult notFound(String query),
    @required TResult firstLoaded(List<UserSearchResultViewModel> list),
    @required TResult moreLoaded(List<UserSearchResultViewModel> list),
  }) {
    assert(initial != null);
    assert(searching != null);
    assert(notFound != null);
    assert(firstLoaded != null);
    assert(moreLoaded != null);
    return searching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult searching(),
    TResult notFound(String query),
    TResult firstLoaded(List<UserSearchResultViewModel> list),
    TResult moreLoaded(List<UserSearchResultViewModel> list),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searching != null) {
      return searching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Inital value),
    @required TResult searching(_Searching value),
    @required TResult notFound(_NotFound value),
    @required TResult firstLoaded(_FirstLoaded value),
    @required TResult moreLoaded(_MoreLoaded value),
  }) {
    assert(initial != null);
    assert(searching != null);
    assert(notFound != null);
    assert(firstLoaded != null);
    assert(moreLoaded != null);
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Inital value),
    TResult searching(_Searching value),
    TResult notFound(_NotFound value),
    TResult firstLoaded(_FirstLoaded value),
    TResult moreLoaded(_MoreLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class _Searching implements UserSearchState {
  const factory _Searching() = _$_Searching;
}

/// @nodoc
abstract class _$NotFoundCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) then) =
      __$NotFoundCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$NotFoundCopyWithImpl<$Res> extends _$UserSearchStateCopyWithImpl<$Res>
    implements _$NotFoundCopyWith<$Res> {
  __$NotFoundCopyWithImpl(_NotFound _value, $Res Function(_NotFound) _then)
      : super(_value, (v) => _then(v as _NotFound));

  @override
  _NotFound get _value => super._value as _NotFound;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_NotFound(
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$_NotFound implements _NotFound {
  const _$_NotFound({this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'UserSearchState.notFound(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotFound &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$NotFoundCopyWith<_NotFound> get copyWith =>
      __$NotFoundCopyWithImpl<_NotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult searching(),
    @required TResult notFound(String query),
    @required TResult firstLoaded(List<UserSearchResultViewModel> list),
    @required TResult moreLoaded(List<UserSearchResultViewModel> list),
  }) {
    assert(initial != null);
    assert(searching != null);
    assert(notFound != null);
    assert(firstLoaded != null);
    assert(moreLoaded != null);
    return notFound(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult searching(),
    TResult notFound(String query),
    TResult firstLoaded(List<UserSearchResultViewModel> list),
    TResult moreLoaded(List<UserSearchResultViewModel> list),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Inital value),
    @required TResult searching(_Searching value),
    @required TResult notFound(_NotFound value),
    @required TResult firstLoaded(_FirstLoaded value),
    @required TResult moreLoaded(_MoreLoaded value),
  }) {
    assert(initial != null);
    assert(searching != null);
    assert(notFound != null);
    assert(firstLoaded != null);
    assert(moreLoaded != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Inital value),
    TResult searching(_Searching value),
    TResult notFound(_NotFound value),
    TResult firstLoaded(_FirstLoaded value),
    TResult moreLoaded(_MoreLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements UserSearchState {
  const factory _NotFound({String query}) = _$_NotFound;

  String get query;
  @JsonKey(ignore: true)
  _$NotFoundCopyWith<_NotFound> get copyWith;
}

/// @nodoc
abstract class _$FirstLoadedCopyWith<$Res> {
  factory _$FirstLoadedCopyWith(
          _FirstLoaded value, $Res Function(_FirstLoaded) then) =
      __$FirstLoadedCopyWithImpl<$Res>;
  $Res call({List<UserSearchResultViewModel> list});
}

/// @nodoc
class __$FirstLoadedCopyWithImpl<$Res>
    extends _$UserSearchStateCopyWithImpl<$Res>
    implements _$FirstLoadedCopyWith<$Res> {
  __$FirstLoadedCopyWithImpl(
      _FirstLoaded _value, $Res Function(_FirstLoaded) _then)
      : super(_value, (v) => _then(v as _FirstLoaded));

  @override
  _FirstLoaded get _value => super._value as _FirstLoaded;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(_FirstLoaded(
      list: list == freezed
          ? _value.list
          : list as List<UserSearchResultViewModel>,
    ));
  }
}

/// @nodoc
class _$_FirstLoaded implements _FirstLoaded {
  const _$_FirstLoaded({this.list});

  @override
  final List<UserSearchResultViewModel> list;

  @override
  String toString() {
    return 'UserSearchState.firstLoaded(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirstLoaded &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$FirstLoadedCopyWith<_FirstLoaded> get copyWith =>
      __$FirstLoadedCopyWithImpl<_FirstLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult searching(),
    @required TResult notFound(String query),
    @required TResult firstLoaded(List<UserSearchResultViewModel> list),
    @required TResult moreLoaded(List<UserSearchResultViewModel> list),
  }) {
    assert(initial != null);
    assert(searching != null);
    assert(notFound != null);
    assert(firstLoaded != null);
    assert(moreLoaded != null);
    return firstLoaded(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult searching(),
    TResult notFound(String query),
    TResult firstLoaded(List<UserSearchResultViewModel> list),
    TResult moreLoaded(List<UserSearchResultViewModel> list),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (firstLoaded != null) {
      return firstLoaded(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Inital value),
    @required TResult searching(_Searching value),
    @required TResult notFound(_NotFound value),
    @required TResult firstLoaded(_FirstLoaded value),
    @required TResult moreLoaded(_MoreLoaded value),
  }) {
    assert(initial != null);
    assert(searching != null);
    assert(notFound != null);
    assert(firstLoaded != null);
    assert(moreLoaded != null);
    return firstLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Inital value),
    TResult searching(_Searching value),
    TResult notFound(_NotFound value),
    TResult firstLoaded(_FirstLoaded value),
    TResult moreLoaded(_MoreLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (firstLoaded != null) {
      return firstLoaded(this);
    }
    return orElse();
  }
}

abstract class _FirstLoaded implements UserSearchState {
  const factory _FirstLoaded({List<UserSearchResultViewModel> list}) =
      _$_FirstLoaded;

  List<UserSearchResultViewModel> get list;
  @JsonKey(ignore: true)
  _$FirstLoadedCopyWith<_FirstLoaded> get copyWith;
}

/// @nodoc
abstract class _$MoreLoadedCopyWith<$Res> {
  factory _$MoreLoadedCopyWith(
          _MoreLoaded value, $Res Function(_MoreLoaded) then) =
      __$MoreLoadedCopyWithImpl<$Res>;
  $Res call({List<UserSearchResultViewModel> list});
}

/// @nodoc
class __$MoreLoadedCopyWithImpl<$Res>
    extends _$UserSearchStateCopyWithImpl<$Res>
    implements _$MoreLoadedCopyWith<$Res> {
  __$MoreLoadedCopyWithImpl(
      _MoreLoaded _value, $Res Function(_MoreLoaded) _then)
      : super(_value, (v) => _then(v as _MoreLoaded));

  @override
  _MoreLoaded get _value => super._value as _MoreLoaded;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(_MoreLoaded(
      list: list == freezed
          ? _value.list
          : list as List<UserSearchResultViewModel>,
    ));
  }
}

/// @nodoc
class _$_MoreLoaded implements _MoreLoaded {
  const _$_MoreLoaded({this.list});

  @override
  final List<UserSearchResultViewModel> list;

  @override
  String toString() {
    return 'UserSearchState.moreLoaded(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoreLoaded &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$MoreLoadedCopyWith<_MoreLoaded> get copyWith =>
      __$MoreLoadedCopyWithImpl<_MoreLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult searching(),
    @required TResult notFound(String query),
    @required TResult firstLoaded(List<UserSearchResultViewModel> list),
    @required TResult moreLoaded(List<UserSearchResultViewModel> list),
  }) {
    assert(initial != null);
    assert(searching != null);
    assert(notFound != null);
    assert(firstLoaded != null);
    assert(moreLoaded != null);
    return moreLoaded(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult searching(),
    TResult notFound(String query),
    TResult firstLoaded(List<UserSearchResultViewModel> list),
    TResult moreLoaded(List<UserSearchResultViewModel> list),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (moreLoaded != null) {
      return moreLoaded(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Inital value),
    @required TResult searching(_Searching value),
    @required TResult notFound(_NotFound value),
    @required TResult firstLoaded(_FirstLoaded value),
    @required TResult moreLoaded(_MoreLoaded value),
  }) {
    assert(initial != null);
    assert(searching != null);
    assert(notFound != null);
    assert(firstLoaded != null);
    assert(moreLoaded != null);
    return moreLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Inital value),
    TResult searching(_Searching value),
    TResult notFound(_NotFound value),
    TResult firstLoaded(_FirstLoaded value),
    TResult moreLoaded(_MoreLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (moreLoaded != null) {
      return moreLoaded(this);
    }
    return orElse();
  }
}

abstract class _MoreLoaded implements UserSearchState {
  const factory _MoreLoaded({List<UserSearchResultViewModel> list}) =
      _$_MoreLoaded;

  List<UserSearchResultViewModel> get list;
  @JsonKey(ignore: true)
  _$MoreLoadedCopyWith<_MoreLoaded> get copyWith;
}
