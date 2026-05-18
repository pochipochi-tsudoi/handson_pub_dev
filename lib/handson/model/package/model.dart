// STEP 3
// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'model.freezed.dart';
// part 'model.g.dart';
//
// @freezed
// abstract class PackageDetailResponse with _$PackageDetailResponse {
//   const factory PackageDetailResponse({
//     required String name,
//     required PackageVersion latest,
//     required List<PackageVersion> versions,
//     @Default(false) bool isDiscontinued,
//     String? replacedBy,
//   }) = _PackageDetailResponse;
//
//   factory PackageDetailResponse.fromJson(Map<String, dynamic> json) =>
//       _$PackageDetailResponseFromJson(json);
// }
//
// @freezed
// abstract class PackageVersion with _$PackageVersion {
//   const factory PackageVersion({
//     required String? version,
//     required String? archiveUrl,
//     required PackagePubspec pubspec,
//     String? published,
//     String? archiveSha256,
//     @Default(false) bool retracted,
//   }) = _PackageVersion;
//
//   factory PackageVersion.fromJson(Map<String, dynamic> json) =>
//       _$PackageVersionFromJson(json);
// }
//
// @freezed
// abstract class PackagePubspec with _$PackagePubspec {
//   const factory PackagePubspec({
//     required String? name,
//     required String? description,
//     required String? version,
//     String? homepage,
//     String? repository,
//     @Default([]) List<String> topics,
//   }) = _PackagePubspec;
//
//   factory PackagePubspec.fromJson(Map<String, dynamic> json) =>
//       _$PackagePubspecFromJson(json);
// }
