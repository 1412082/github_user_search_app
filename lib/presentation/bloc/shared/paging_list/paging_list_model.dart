import 'package:flutter/foundation.dart';

class PagingListModel<T> {
  /// Total items that already fetch from data sources.
  final List<T> items;

  /// Current page loaded.
  final int currentPageNumber;

  /// Number of item in a page.
  final int itemPerPage;

  /// Total items count at data source.
  final int totalItemCount;

  /// Return -1 mean no more page.
  int get nextPageNumber => isAllItemsLoaded ? -1 : currentPageNumber + 1;

  /// Verify that is there any item left on data source.
  bool get isAllItemsLoaded => items.length == totalItemCount;

  const PagingListModel({
    @required this.items,
    @required this.currentPageNumber,
    @required this.itemPerPage,
    @required this.totalItemCount,
  });
}
