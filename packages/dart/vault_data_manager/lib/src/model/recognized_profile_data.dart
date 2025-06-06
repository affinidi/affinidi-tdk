import 'profile_data.dart';

/// Represents data extracted and recognized from scanned documents.
///
/// This class is used to store and structure information that has been
/// automatically extracted from scanned documents. It includes:
/// - Data type information for recognized fields
/// - Alternative interpretations of recognized data
/// - Hierarchical organization of extracted information
class RecognizedDatapoint {
  /// Name of the recognized field
  final String? name;

  /// Data type of the recognized information
  final String type;

  /// Alternative possible values recognized for this data point
  final List<String>? alternatives;

  /// Nested recognized data points
  final Map<String, RecognizedDatapoint>? properties;

  /// List of related recognized data points
  final List<RecognizedDatapoint>? items;

  /// Creates a new recognized datapoint instance.
  RecognizedDatapoint({
    this.name,
    required this.type,
    this.alternatives,
    this.properties,
    this.items,
  });

  /// Creates a [RecognizedDatapoint] from a JSON map.
  factory RecognizedDatapoint.fromJson(Map<String, dynamic> json) {
    return RecognizedDatapoint(
      name: json['name'] as String?,
      type: json['type'] as String,
      alternatives: (json['alternatives'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      properties: (json['properties'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, RecognizedDatapoint.fromJson(e as Map<String, dynamic>)),
      ),
      items: (json['items'] as List<dynamic>?)
          ?.map(
            (e) => RecognizedDatapoint.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  /// Converts this [RecognizedDatapoint] to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'type': type,
      'alternatives': alternatives,
      'properties': properties?.map((k, e) => MapEntry(k, e.toJson())),
      'items': items?.map((e) => e.toJson()).toList(),
    };
  }
}

/// Contains recognized category-specific data points.
class RecognizedCategoryData {
  /// Map of property names to their recognized data points
  final Map<String, RecognizedDatapoint> properties;

  /// Creates a new recognized category data instance.
  RecognizedCategoryData({required this.properties});

  /// Creates a [RecognizedCategoryData] from a JSON map.
  factory RecognizedCategoryData.fromJson(Map<String, dynamic> json) {
    return RecognizedCategoryData(
      properties: (json['properties'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k, RecognizedDatapoint.fromJson(e as Map<String, dynamic>)),
      ),
    );
  }

  /// Converts this [RecognizedCategoryData] to a JSON map.
  Map<String, dynamic> toJson() {
    return {'properties': properties.map((k, e) => MapEntry(k, e.toJson()))};
  }
}

/// Contains recognized data organized into a profile structure.
///
/// This class is used as the result of document scanning operations, providing
/// structured access to recognized personal information and document categories.
/// It mirrors the structure of [ProfileData] but with additional recognition
/// metadata and confidence information.
class RecognizedProfileData {
  /// Recognized personal information from the scanned document
  final RecognizedCategoryData? person;

  /// Recognized category/classification information from the scanned document
  final RecognizedCategoryData? categories;

  /// Creates a new recognized profile data instance.
  ///
  /// Both [person] and [categories] are optional.
  RecognizedProfileData({this.person, this.categories});

  /// Creates a [RecognizedProfileData] from a JSON map.
  factory RecognizedProfileData.fromJson(Map<String, dynamic> json) {
    return RecognizedProfileData(
      person: json['person'] != null
          ? RecognizedCategoryData.fromJson(
              json['person'] as Map<String, dynamic>,
            )
          : null,
      categories: json['categories'] != null
          ? RecognizedCategoryData.fromJson(
              json['categories'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Converts this [RecognizedProfileData] to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'person': person?.properties.map((k, e) => MapEntry(k, e.toJson())),
      'categories':
          categories?.properties.map((k, e) => MapEntry(k, e.toJson())),
    };
  }

  /// Checks if this recognized profile data contains any data.
  ///
  /// Returns true if both person and categories are null.
  bool isEmpty() => person == null && categories == null;
}
