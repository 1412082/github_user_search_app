// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/users/i_user_repository.dart' as _i9;
import 'infrastructure/core/network/base/i_network_connection_checker.dart'
    as _i4;
import 'infrastructure/core/network/base/network_connection_checker.dart'
    as _i5;
import 'infrastructure/core/network/github_api_client.dart' as _i6;
import 'infrastructure/core/network/network.dart' as _i7;
import 'infrastructure/core/network/network_config.dart' as _i3;
import 'infrastructure/core/network/requests/network_request_loader.dart'
    as _i8;
import 'infrastructure/users/user_repository.dart' as _i10;
import 'presentation/bloc/users/search_result_actor/search_result_actor_bloc.dart'
    as _i11;
import 'presentation/bloc/users/user_search/user_search_bloc.dart' as _i12;

const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.INetworkConfig>(() => _i3.ProductionNetworkConfig(),
      registerFor: {_prod});
  gh.factory<_i3.INetworkConfig>(() => _i3.DevNetworkConfig(),
      registerFor: {_dev});
  gh.factory<_i3.INetworkConfig>(() => _i3.MockNetworkConfig(),
      registerFor: {_test});
  gh.lazySingleton<_i4.INetworkConnectionChecker>(
      () => _i5.NetworkConnectionChecker(),
      registerFor: {_prod, _dev});
  gh.lazySingleton<_i4.INetworkConnectionChecker>(
      () => _i5.MockNetworkConnectionChecker(),
      registerFor: {_test});
  gh.factory<_i6.INetworkExecutor>(
      () => _i6.GithubApiClient(get<_i3.INetworkConfig>()),
      registerFor: {_prod, _dev});
  gh.factory<_i6.INetworkExecutor>(() => _i6.MockApiClient(),
      registerFor: {_test});
  gh.lazySingleton<_i7.INetworkRequestLoader>(
      () => _i8.NetworkRequestLoader(get<_i6.INetworkExecutor>()),
      registerFor: {_prod, _dev});
  gh.lazySingleton<_i7.INetworkRequestLoader>(() => _i8.MockNetworkLoader(),
      registerFor: {_test});
  gh.lazySingleton<_i9.IUserRepository>(
      () => _i10.UserRepository(get<_i7.INetworkRequestLoader>(),
          get<_i7.INetworkConnectionChecker>()),
      registerFor: {_prod, _dev});
  gh.lazySingleton<_i9.IUserRepository>(() => _i10.MockUserRepository(),
      registerFor: {_test});
  gh.factory<_i11.SearchResultActorBloc>(() => _i11.SearchResultActorBloc());
  gh.factory<_i12.UserSearchBloc>(
      () => _i12.UserSearchBloc(get<_i9.IUserRepository>()));
  return get;
}
