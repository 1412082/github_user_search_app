// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_result_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchResultActorEventTearOff {
  const _$SearchResultActorEventTearOff();

// ignore: unused_element
  _OnFollow onFollow() {
    return const _OnFollow();
  }

// ignore: unused_element
  _OnUnFollow onUnFollow() {
    return const _OnUnFollow();
  }
}

/// @nodoc
// ignore: unused_element
const $SearchResultActorEvent = _$SearchResultActorEventTearOff();

/// @nodoc
mixin _$SearchResultActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onFollow(),
    @required TResult onUnFollow(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onFollow(),
    TResult onUnFollow(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onFollow(_OnFollow value),
    @required TResult onUnFollow(_OnUnFollow value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onFollow(_OnFollow value),
    TResult onUnFollow(_OnUnFollow value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SearchResultActorEventCopyWith<$Res> {
  factory $SearchResultActorEventCopyWith(SearchResultActorEvent value,
          $Res Function(SearchResultActorEvent) then) =
      _$SearchResultActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchResultActorEventCopyWithImpl<$Res>
    implements $SearchResultActorEventCopyWith<$Res> {
  _$SearchResultActorEventCopyWithImpl(this._value, this._then);

  final SearchResultActorEvent _value;
  // ignore: unused_field
  final $Res Function(SearchResultActorEvent) _then;
}

/// @nodoc
abstract class _$OnFollowCopyWith<$Res> {
  factory _$OnFollowCopyWith(_OnFollow value, $Res Function(_OnFollow) then) =
      __$OnFollowCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnFollowCopyWithImpl<$Res>
    extends _$SearchResultActorEventCopyWithImpl<$Res>
    implements _$OnFollowCopyWith<$Res> {
  __$OnFollowCopyWithImpl(_OnFollow _value, $Res Function(_OnFollow) _then)
      : super(_value, (v) => _then(v as _OnFollow));

  @override
  _OnFollow get _value => super._value as _OnFollow;
}

/// @nodoc
class _$_OnFollow implements _OnFollow {
  const _$_OnFollow();

  @override
  String toString() {
    return 'SearchResultActorEvent.onFollow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnFollow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onFollow(),
    @required TResult onUnFollow(),
  }) {
    assert(onFollow != null);
    assert(onUnFollow != null);
    return onFollow();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onFollow(),
    TResult onUnFollow(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onFollow != null) {
      return onFollow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onFollow(_OnFollow value),
    @required TResult onUnFollow(_OnUnFollow value),
  }) {
    assert(onFollow != null);
    assert(onUnFollow != null);
    return onFollow(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onFollow(_OnFollow value),
    TResult onUnFollow(_OnUnFollow value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onFollow != null) {
      return onFollow(this);
    }
    return orElse();
  }
}

abstract class _OnFollow implements SearchResultActorEvent {
  const factory _OnFollow() = _$_OnFollow;
}

/// @nodoc
abstract class _$OnUnFollowCopyWith<$Res> {
  factory _$OnUnFollowCopyWith(
          _OnUnFollow value, $Res Function(_OnUnFollow) then) =
      __$OnUnFollowCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnUnFollowCopyWithImpl<$Res>
    extends _$SearchResultActorEventCopyWithImpl<$Res>
    implements _$OnUnFollowCopyWith<$Res> {
  __$OnUnFollowCopyWithImpl(
      _OnUnFollow _value, $Res Function(_OnUnFollow) _then)
      : super(_value, (v) => _then(v as _OnUnFollow));

  @override
  _OnUnFollow get _value => super._value as _OnUnFollow;
}

/// @nodoc
class _$_OnUnFollow implements _OnUnFollow {
  const _$_OnUnFollow();

  @override
  String toString() {
    return 'SearchResultActorEvent.onUnFollow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnUnFollow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onFollow(),
    @required TResult onUnFollow(),
  }) {
    assert(onFollow != null);
    assert(onUnFollow != null);
    return onUnFollow();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onFollow(),
    TResult onUnFollow(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onUnFollow != null) {
      return onUnFollow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onFollow(_OnFollow value),
    @required TResult onUnFollow(_OnUnFollow value),
  }) {
    assert(onFollow != null);
    assert(onUnFollow != null);
    return onUnFollow(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onFollow(_OnFollow value),
    TResult onUnFollow(_OnUnFollow value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onUnFollow != null) {
      return onUnFollow(this);
    }
    return orElse();
  }
}

abstract class _OnUnFollow implements SearchResultActorEvent {
  const factory _OnUnFollow() = _$_OnUnFollow;
}

/// @nodoc
class _$SearchResultActorStateTearOff {
  const _$SearchResultActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }
}

/// @nodoc
// ignore: unused_element
const $SearchResultActorState = _$SearchResultActorStateTearOff();

/// @nodoc
mixin _$SearchResultActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SearchResultActorStateCopyWith<$Res> {
  factory $SearchResultActorStateCopyWith(SearchResultActorState value,
          $Res Function(SearchResultActorState) then) =
      _$SearchResultActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchResultActorStateCopyWithImpl<$Res>
    implements $SearchResultActorStateCopyWith<$Res> {
  _$SearchResultActorStateCopyWithImpl(this._value, this._then);

  final SearchResultActorState _value;
  // ignore: unused_field
  final $Res Function(SearchResultActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$SearchResultActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SearchResultActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
  }) {
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
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
    @required TResult initial(_Initial value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchResultActorState {
  const factory _Initial() = _$_Initial;
}
