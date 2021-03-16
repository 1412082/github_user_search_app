import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

/// Build avatar widget base on url store in server.
class UserAvatarWidget extends StatelessWidget {
  final String avatarUrl;
  final String nameShortcut;
  final double avatarSize;

  const UserAvatarWidget({Key key, this.avatarUrl, this.nameShortcut, this.avatarSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultAvatarWidget = Text(nameShortcut);

    final baseColor = Colors.black12;
    const highlightColor = Colors.grey;

    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        shape: BoxShape.circle
      ),
      child: CircleAvatar(
        minRadius: avatarSize,
        maxRadius: avatarSize,
        backgroundColor: Colors.grey,
        child: CachedNetworkImage(
          imageUrl: avatarUrl,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
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
          errorWidget: (context, error, stackTrace) => defaultAvatarWidget,
        ),
      ),
    );
  }
}
