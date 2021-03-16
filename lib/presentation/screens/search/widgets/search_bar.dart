import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget implements PreferredSizeWidget {
  /// Placeholder of search bar.
  final String hintText;

  /// Text style of [hintText]
  final TextStyle hintTextStyle;

  /// Search query text style.
  final TextStyle queryTextStyle;

  /// Prefix icon of search bar
  final Widget prefixIcon;

  /// Suffix icon of search bar
  final Widget suffixIcon;

  /// Back button of search screen.
  final Widget backButton;

  /// Search text field cursor color.
  final Color cursorColor;

  final double barHeight;

  final Color backgroundColor;

  final Decoration decoration;

  final EdgeInsetsGeometry padding;

  /// Constructor.
  const SearchBar({
    Key key,
    @required this.onCancelSearch,
    @required this.onSearchQueryChanged,
    this.hintText,
    this.prefixIcon,
    this.backButton,
    this.suffixIcon,
    this.hintTextStyle,
    this.queryTextStyle,
    this.cursorColor,
    this.barHeight,
    this.backgroundColor,
    this.decoration,
    this.padding,
  }) : super(key: key);

  final VoidCallback onCancelSearch;
  final Function(String) onSearchQueryChanged;

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> with SingleTickerProviderStateMixin {
  String searchQuery = '';
  final _searchFieldController = TextEditingController();
  final _searchFieldFocusNode = FocusNode();
  bool isSearching = true;

  void clearSearchQuery() {
    _searchFieldController.clear();
    widget.onSearchQueryChanged('');
  }

  @override
  void initState() {
    super.initState();
    _searchFieldFocusNode.addListener(() {
      if (_searchFieldFocusNode.hasFocus) {
        setState(() {
          isSearching = true;
        });
      } else {
        setState(() {
          isSearching = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _searchFieldController.dispose();
    _searchFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: widget.backgroundColor,
        decoration: widget.decoration,
        padding: widget.padding,
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: _searchFieldController,
                focusNode: _searchFieldFocusNode,
                cursorColor: widget.cursorColor,
                style: widget.queryTextStyle,
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: widget.prefixIcon,
                  hintText: widget.hintText,
                  hintStyle: widget.hintTextStyle,
                  suffixIcon: isSearching
                      ? InkWell(
                          onTap: clearSearchQuery,
                          child: widget.suffixIcon,
                        )
                      : null,
                ),
                onChanged: widget.onSearchQueryChanged,
              ),
            )
          ],
        ),
      ),
    );
  }
}
