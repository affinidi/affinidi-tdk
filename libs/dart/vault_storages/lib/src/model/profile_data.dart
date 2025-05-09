import 'profile_datapoint.dart';

/// Represents structured data associated with a profile.
///
/// ProfileData organizes profile information into two main sections:
/// - [categories]: Classification or grouping data about the profile
/// - [person]: Personal information and attributes about the profile owner
class ProfileData {
  /// Classification and categorization data about the profile
  /// This might include things like groups or other organizational metadata
  final ProfileDatapoint categories;

  /// Personal information about the profile owner
  /// This might include details like name or contact information
  final ProfileDatapoint person;

  /// Creates a new profile data instance.
  ///
  /// Requires both [categories] and [person] data points.
  ProfileData({
    required this.categories,
    required this.person,
  });

  /// Creates a [ProfileData] from a JSON map.
  factory ProfileData.fromJson(Map<String, dynamic> json) {
    return ProfileData(
      categories:
          ProfileDatapoint.fromJson(json['categories'] as Map<String, dynamic>),
      person: ProfileDatapoint.fromJson(json['person'] as Map<String, dynamic>),
    );
  }

  /// Converts this [ProfileData] to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'categories': categories.toJson(),
      'person': person.toJson(),
    };
  }
}
