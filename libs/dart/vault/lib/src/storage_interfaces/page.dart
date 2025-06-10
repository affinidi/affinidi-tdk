/// A page of items with pagination information
class Page<T> {
  /// The items in this page
  final List<T> items;

  /// The ID of the last item in the current page.
  /// This key is used to fetch the next page of items, and the item with this ID
  /// will be excluded from the next page's results.
  /// The type of ID depends on what we're paginating:
  /// - For folders: it's a folder ID
  /// - For files: it's a file ID
  /// - For credentials: it's a credential node ID
  ///
  /// When this is null, it means there are no more pages to fetch.
  final String? lastEvaluatedItemId;

  /// Check if there are more pages available
  bool get hasMore => lastEvaluatedItemId != null;

  /// Creates a new page with the given items and optional last evaluated item ID
  Page({
    required this.items,
    this.lastEvaluatedItemId,
  });
}
