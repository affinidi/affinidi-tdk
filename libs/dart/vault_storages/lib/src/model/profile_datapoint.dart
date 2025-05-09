/// Represents a data structure for storing profile-related information.
///
/// ProfileDatapoint can store data in three ways:
/// 1. As a single value (using [value])
/// 2. As a map of named properties (using [properties])
/// 3. As a list of related items (using [items])
class ProfileDatapoint {
  /// Name or identifier of this data point
  final String? name;

  /// Value of this data point
  String? value;

  /// Nested properties, allowing for hierarchical data structure
  Map<String, ProfileDatapoint>? properties;

  /// List of data points
  List<ProfileDatapoint>? items;

  /// Version lock
  int vlock;

  /// Creates a new profile data point.
  ///
  /// [name] is required, while [value], [properties], [items], and [vlock]
  /// are optional. [vlock] defaults to 1.
  ProfileDatapoint({
    required this.name,
    this.value,
    this.properties,
    this.items,
    this.vlock = 1,
  });

  /// Creates a [ProfileDatapoint] from a JSON map.
  factory ProfileDatapoint.fromJson(Map<String, dynamic> json) {
    return ProfileDatapoint(
      name: json['name'] as String?,
      value: json['value'] as String?,
      properties: (json['properties'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ProfileDatapoint.fromJson(e as Map<String, dynamic>)),
      ),
      items: (json['items'] as List<dynamic>?)
          ?.map(
            (e) => ProfileDatapoint.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      vlock: json['vlock'] as int? ?? 1,
    );
  }

  /// Converts this [ProfileDatapoint] to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value,
      'properties': properties?.map((k, e) => MapEntry(k, e.toJson())),
      'items': items?.map((e) => e.toJson()).toList(),
      'vlock': vlock,
    };
  }
}
