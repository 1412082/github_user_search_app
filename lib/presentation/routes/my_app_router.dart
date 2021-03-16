import 'package:auto_route/auto_route_annotations.dart';
import 'package:github_user_search_app/presentation/screens/search/search_screen.dart';
import 'package:github_user_search_app/presentation/screens/user_profile/user_profile_screen.dart';


@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SearchScreen, initial: true),
    MaterialRoute(page: UserProfileScreen),

  ],
)
class $MyAppRouter {}
