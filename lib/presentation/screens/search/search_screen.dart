import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search_app/injectable.dart';
import 'package:github_user_search_app/presentation/bloc/users/search_result_actor/search_result_actor_bloc.dart';
import 'package:github_user_search_app/presentation/bloc/users/user_search/user_search_bloc.dart';
import 'package:github_user_search_app/presentation/bloc/users/user_search/user_search_result_view_model.dart';
import 'package:github_user_search_app/presentation/routes/route_index.dart';
import 'package:github_user_search_app/presentation/screens/search/widgets/search_bar.dart';
import 'package:github_user_search_app/presentation/screens/search/widgets/user_avatar_widget.dart';
import 'package:github_user_search_app/presentation/screens/user_profile/user_profile_screen.dart';
import 'package:shimmer/shimmer.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  static const double SIDE_PADDING = 16.0;
  static const double AVATAR_SIZE = 26.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<SearchResultActorBloc>()),
          BlocProvider(create: (context) => getIt<UserSearchBloc>()),
        ],
        child: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: const IconButton(
                icon: Icon(Icons.arrow_left),
                onPressed: null,
              ),
              brightness: Brightness.light,
              centerTitle: true,
              title: const Text(
                'Seach GitHub',
                style: TextStyle(color: Colors.black),
              ),
              bottom: SearchBar(
                backgroundColor: Colors.grey,
                hintText: 'Type a name ...',
                // hintTextStyle: ,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.clear),
                // queryTextStyle: ,
                onSearchQueryChanged: (query) =>
                    BlocProvider.of<UserSearchBloc>(context).debounceQueryChangedEvent(newQuery: query),
                onCancelSearch: () {},
              ),
            ),
            body: BlocListener<SearchResultActorBloc, SearchResultActorState>(
              listener: (context, state) {
                Scaffold.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Action did!!',
                    ),
                  ),
                );
              },
              child: SafeArea(
                child: BlocBuilder<UserSearchBloc, UserSearchState>(
                  builder: (context, state) {
                    return state.map(
                        initial: (_) => Container(),
                        searching: (_) => _buildLoadingWidget(),
                        firstLoaded: (firstLoadedState) => ListView.separated(
                              separatorBuilder: (context, index) => Container(
                                color: Colors.white,
                                padding: const EdgeInsets.only(left: 85),
                                child: const Divider(
                                  color: Colors.grey,
                                  height: 1,
                                ),
                              ),
                              itemCount: firstLoadedState.list.length,
                              itemBuilder: (context, index) =>
                                  _buildSearchResultCell(viewModel: firstLoadedState.list[index]),
                            ),
                        moreLoaded: (moreLoadedState) {
                          return Container();
                        },
                        notFound: (notFoundState) => _buildNotFoundWidget(notFoundState.query));
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Loading UI when checking if social profile exists or not.
  Widget _buildLoadingWidget() {
    return const SafeArea(
      child: Center(
        child: CupertinoActivityIndicator(
          radius: 15,
        ),
      ),
    );
  }

  /// UI that let user know that no result found by the [query].
  Widget _buildNotFoundWidget(String query) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(SIDE_PADDING),
          child: Text(
            'Nothing found for input "$query"',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }

  /// Build friend cell
  Widget _buildSearchResultCell(
      {double cellHeight = 75, double avatarSize = AVATAR_SIZE, UserSearchResultViewModel viewModel}) {
    return GestureDetector(
      onTap: () => ExtendedNavigator.of(context).push(
        Routes.userProfileScreen,
        arguments: UserProfileScreenArguments(userViewModel: viewModel),
      ),
      child: Container(
        height: cellHeight,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: SIDE_PADDING, right: SIDE_PADDING),
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: UserAvatarWidget(
                avatarSize: avatarSize,
                nameShortcut: viewModel.nameShortcutDisplay,
                avatarUrl: viewModel.avatarUrl,
              ),
            ),
            Expanded(
              child: Text(
                viewModel.fullName,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
