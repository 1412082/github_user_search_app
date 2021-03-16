import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search_app/domain/users/i_user_repository.dart';
import 'package:github_user_search_app/injectable.dart';
import 'package:github_user_search_app/presentation/bloc/users/user_search/user_search_result_view_model.dart';
import 'package:github_user_search_app/presentation/bloc/users/user_profile/user_profile_bloc.dart';
import 'package:github_user_search_app/presentation/screens/search/widgets/user_avatar_widget.dart';
import 'package:shimmer/shimmer.dart';

class UserProfileScreenArguments {
  final UserSearchResultViewModel userViewModel;

  UserProfileScreenArguments({this.userViewModel});
}

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key key}) : super(key: key);

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  /// Left and right padding of screen's content
  static const double SIDE_PADDING = 20.0;

  @override
  Widget build(BuildContext context) {
    final routeData = RouteData.of(context);
    final args = routeData.arguments as UserProfileScreenArguments;
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => UserProfileBloc(
              userRepository: getIt<IUserRepository>(),
              username: args.userViewModel.fullName,
            ),
          ),
        ],
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
                icon: const Icon(Icons.chevron_left),
                color: Colors.black,
                onPressed: () => Navigator.of(context).pop()),
            backgroundColor: Colors.white,
            brightness: Brightness.light,
            elevation: 0.0,
            title: const Text(
              'User Detail',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Center(
                      // padding: const EdgeInsets.only(left: SIDE_PADDING, right: SIDE_PADDING),
                      child: Container(
                        margin: const EdgeInsets.only(right: SIDE_PADDING),
                        child: UserAvatarWidget(
                          avatarSize: 120,
                          nameShortcut: args.userViewModel.nameShortcutDisplay,
                          avatarUrl: args.userViewModel.avatarUrl,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<UserProfileBloc, UserProfileState>(
                  builder: (context, state) {
                    if (state == null) {
                      return Container();
                    }
                    return state.maybeMap(
                      orElse: () => _buildFetchingUI(),
                      loaded: (loadedState) {
                        return Container(
                          margin: const EdgeInsets.all(SIDE_PADDING),
                          width: double.infinity,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Wrap(
                              direction: Axis.vertical,
                              alignment: WrapAlignment.center,
                              spacing: 10,
                              children: [
                                // Name
                                Text(
                                  loadedState.profile.name,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Username
                                Text(
                                  args.userViewModel.fullName,
                                  style: const TextStyle(color: Colors.grey, fontSize: 20),
                                ),

                                const SizedBox(
                                  height: 10,
                                ),
                                // Followers & following
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.people_alt_outlined,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      loadedState.profile.followers.toString(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'followers',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      (loadedState.profile.following ?? 0).toString(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'following',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Wrap(
                                  direction: Axis.vertical,
                                  children: [
                                    // Location
                                    if (loadedState.profile.location != null && loadedState.profile.location.isNotEmpty)
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.grey,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            loadedState.profile.location,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    // Email
                                    if (loadedState.profile.email != null && loadedState.profile.email.isNotEmpty)
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.email_outlined,
                                            color: Colors.grey,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            loadedState.profile.email,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    // Blog link
                                    if (loadedState.profile.blog != null && loadedState.profile.blog.isNotEmpty)
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.link,
                                            color: Colors.grey,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            loadedState.profile.blog,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildFetchingUI() {
    const baseColor = Colors.grey;
    const highlightColor = Colors.white;
    return Container(
      margin: const EdgeInsets.all(SIDE_PADDING),
      width: double.infinity,
      child: Center(
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            // Name
            Shimmer.fromColors(
              baseColor: baseColor,
              highlightColor: highlightColor,
              child: Container(
                padding: const EdgeInsets.only(right: SIDE_PADDING),
                height: 15,
                width: 120,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7.5)),
                  color: baseColor,
                ),
              ),
            ),
            // Username
            Shimmer.fromColors(
              baseColor: baseColor,
              highlightColor: highlightColor,
              child: Container(
                padding: const EdgeInsets.only(right: SIDE_PADDING),
                height: 10,
                width: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: baseColor,
                ),
              ),
            ),

            // Duration and number of players.
            Wrap(
              spacing: 30,
              children: [
                Shimmer.fromColors(
                  baseColor: baseColor,
                  highlightColor: highlightColor,
                  child: Container(
                    padding: const EdgeInsets.only(right: SIDE_PADDING),
                    height: 10,
                    width: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: baseColor,
                    ),
                  ),
                ),
                Shimmer.fromColors(
                  baseColor: baseColor,
                  highlightColor: highlightColor,
                  child: Container(
                    padding: const EdgeInsets.only(right: SIDE_PADDING),
                    height: 10,
                    width: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: baseColor,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
