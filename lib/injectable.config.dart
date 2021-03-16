// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/users/i_user_repository.dart' as _i8;
import 'infrastructure/core/network/base/i_network_connection_checker.dart'
    as _i4;
import 'infrastructure/core/network/base/network_connection_checker.dart'
    as _i5;
import 'infrastructure/core/network/github_api_client.dart' as _i3;
import 'infrastructure/core/network/network.dart' as _i6;
import 'infrastructure/core/network/requests/network_request_loader.dart'
    as _i7;
import 'infrastructure/users/user_repository.dart' as _i9;

const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.GithubApiClient>(() => _i3.GithubApiClient(get<String>()),
      registerFor: {_prod, _dev});
  gh.lazySingleton<_i4.INetworkConnectionChecker>(
      () => _i5.NetworkConnectionChecker(),
      registerFor: {_prod, _dev});
  gh.lazySingleton<_i4.INetworkConnectionChecker>(
      () => _i5.MockNetworkConnectionChecker(),
      registerFor: {_test});
  gh.lazySingleton<_i6.INetworkRequestLoader>(
      () => _i7.NetworkRequestLoader(get<_i3.NetworkExecutor>()),
      registerFor: {_prod, _dev});
  gh.lazySingleton<_i6.INetworkRequestLoader>(() => _i7.MockNetworkLoader(),
      registerFor: {_test});
  gh.lazySingleton<_i8.IUserRepository>(
      () => _i9.UserRepository(get<_i6.INetworkRequestLoader>(),
          get<_i6.INetworkConnectionChecker>()),
      registerFor: {_prod, _dev});
  gh.lazySingleton<_i8.IUserRepository>(() => _i9.MockUserRepository(),
      registerFor: {_test});
  gh.factory<_i3.MockApiClient>(() => _i3.MockApiClient(), registerFor: {_dev});
  return get;
}
