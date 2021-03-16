import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_user_search_app/domain/users/user.dart';

part 'user_search_result_view_model.freezed.dart';

@freezed
abstract class UserSearchResultViewModel implements _$UserSearchResultViewModel {
  const factory UserSearchResultViewModel({
    String fullName,
    String avatarUrl,
    String email,
  }) = _UserSearchResultViewModel;

  const UserSearchResultViewModel._();

  factory UserSearchResultViewModel.fromDomain({User domainUser}) => UserSearchResultViewModel(
        fullName: domainUser.fullName,
        avatarUrl: domainUser.imageUrl,
      );

  String get nameShortcutDisplay => fullName.toUpperCase();
}
