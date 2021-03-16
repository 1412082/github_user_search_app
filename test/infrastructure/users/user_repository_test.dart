import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_user_search_app/domain/core/errors.dart';
import 'package:github_user_search_app/domain/users/i_user_repository.dart';
import 'package:github_user_search_app/domain/users/user.dart';
import 'package:github_user_search_app/infrastructure/core/network/base/i_network_connection_checker.dart';
import 'package:github_user_search_app/infrastructure/core/network/network.dart';
import 'package:github_user_search_app/infrastructure/users/user_dtos.dart';
import 'package:github_user_search_app/infrastructure/users/user_repository.dart';
import 'package:github_user_search_app/injectable.dart';
import 'package:injectable/injectable.dart' as di;
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(environment: di.Environment.test);

  INetworkConnectionChecker networkConnectionChecker;
  INetworkRequestLoader networkRequestLoader;

  IUserRepository userRepository;
  setUp(() {
    networkConnectionChecker = getIt<INetworkConnectionChecker>();
    networkRequestLoader = getIt<INetworkRequestLoader>();
    userRepository = UserRepository(networkRequestLoader, networkConnectionChecker);
  });
  // Network setup
  void setupNoNetwork() =>
      when(networkConnectionChecker.hasConnection()).thenAnswer((realInvocation) => Future.value(false));
  void setupHasNetwork() =>
      when(networkConnectionChecker.hasConnection()).thenAnswer((realInvocation) => Future.value(true));

  // Network loader by pass setup
  void setupNetworkLoaderSuccess<T>({T value}) =>
      when(networkRequestLoader.loadRequest(any)).thenAnswer((realInvocation) => Stream<T>.value(value));
  void setupNetworkLoaderFail<T>({dynamic error}) =>
      when(networkRequestLoader.loadRequest(any)).thenAnswer((realInvocation) => Stream<T>.error(error));

  group('Test [searchUsers] function', () {
    test('Should check network connection before request', () {
      // arrange
      setupHasNetwork();
      // act
      userRepository.searchUsers(query: "random-query");
      // assert
      verify(networkConnectionChecker.hasConnection());
    });
    test('Should return error when network not available', () async {
      // arrange
      setupNoNetwork();
      // act
      final searchStream = userRepository.searchUsers(query: "random-query");
      // assert
      expect(searchStream, emitsError(isInstanceOf<NoNetworkConnectionError>()));
    }, timeout: const Timeout(Duration(seconds: 3)));

    test('Should request to server and response result when network available', () {
      // arrange
      setupHasNetwork();
      setupNetworkLoaderSuccess<NetworkListData<UserDto>>(value: NetworkListData.empty());
      // act
      final searchStream = userRepository.searchUsers(query: "random-query");
      // assert
      expect(searchStream, emits(isInstanceOf<List<User>>())); // Should response data.
      searchStream.doOnDone(() => verify(networkRequestLoader.loadRequest(any))); // Should call load request
    }, timeout: const Timeout(Duration(seconds: 3)));

    test('Should not crash if NetworkDataList null, instead return empty list.', () {
      // arrange
      setupHasNetwork();
      setupNetworkLoaderSuccess<NetworkListData<UserDto>>(value: null);
      // act
      final searchStream = userRepository.searchUsers(query: "random-query");
      // assert
      expect(searchStream, emits(equals(List<User>.empty()))); // Should response empty list.
    }, timeout: const Timeout(Duration(seconds: 3)));

  });
}
