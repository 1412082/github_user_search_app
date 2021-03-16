import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search_app/injectable.dart';
import 'package:github_user_search_app/presentation/bloc/users/search_result_actor/search_result_actor_bloc.dart';
import 'package:github_user_search_app/presentation/bloc/users/user_search/user_search_bloc.dart';
import 'package:github_user_search_app/presentation/bloc/users/user_search/user_search_result_view_model.dart';
import 'package:github_user_search_app/presentation/screens/search/widgets/search_bar.dart';
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
              title: const Text('Seach github profile'),
              bottom: SearchBar(
                backgroundColor: Colors.grey,
                hintText: 'Type ...',
                // hintTextStyle: this._theme.typographies.descriptionText1().textStyle,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.clear),
                // queryTextStyle: this._theme.typographies.descriptionText1().textStyle,
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
        child: Text(
          'Nothing found for input $query',
        ),
      ),
    );
  }

  /// Build friend cell
  Widget _buildSearchResultCell(
      {double cellHeight = 75, double avatarSize = AVATAR_SIZE, UserSearchResultViewModel viewModel}) {
    return Container(
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
            child: _avatarFrom(viewModel: viewModel, avatarSize: avatarSize),
          ),
          Expanded(
            child: Text(
              viewModel.fullName,
            ),
          ),
        ],
      ),
    );
  }

  /// Build avatar widget base on url store in server.
  ///
  /// If [url] is empty. Avatar will be text combined by first letters of [BuddyChallengeFriendsViewModel.firstName] and [BuddyChallengeFriendsViewModel.lastName].
  Widget _avatarFrom({@required UserSearchResultViewModel viewModel, @required double avatarSize}) {
    final nameShortcut = viewModel.nameShortcutDisplay;
    final defaultAvatarWidget = Text(
      nameShortcut,
    );

    final baseColor = Colors.black12;
    const highlightColor = Colors.grey;

    final avatarWidget = viewModel.avatarUrl?.isEmpty ?? true
        ? defaultAvatarWidget
        : CachedNetworkImage(
            imageUrl: viewModel.avatarUrl,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
//                  colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn),
                ),
              ),
            ),
            placeholder: (context, url) => Shimmer.fromColors(
              baseColor: baseColor,
              highlightColor: highlightColor,
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                minRadius: avatarSize,
              ),
            ),
            errorWidget: (context, error, stackTrace) {
              return defaultAvatarWidget;
            },
          );

    return CircleAvatar(
      minRadius: avatarSize,
      maxRadius: avatarSize,
      backgroundColor: Colors.grey,
      child: Container(
        child: avatarWidget,
      ),
    );
  }
}
