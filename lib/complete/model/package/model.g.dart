// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageDetailResponse _$PackageDetailResponseFromJson(
  Map<String, dynamic> json,
) => _PackageDetailResponse(
  name: json['name'] as String,
  latest: PackageVersion.fromJson(json['latest'] as Map<String, dynamic>),
  versions: (json['versions'] as List<dynamic>)
      .map((e) => PackageVersion.fromJson(e as Map<String, dynamic>))
      .toList(),
  isDiscontinued: json['isDiscontinued'] as bool? ?? false,
  replacedBy: json['replacedBy'] as String?,
);

Map<String, dynamic> _$PackageDetailResponseToJson(
  _PackageDetailResponse instance,
) => <String, dynamic>{
  'name': instance.name,
  'latest': instance.latest,
  'versions': instance.versions,
  'isDiscontinued': instance.isDiscontinued,
  'replacedBy': instance.replacedBy,
};

_PackageVersion _$PackageVersionFromJson(Map<String, dynamic> json) =>
    _PackageVersion(
      version: json['version'] as String?,
      archiveUrl: json['archiveUrl'] as String?,
      pubspec: PackagePubspec.fromJson(json['pubspec'] as Map<String, dynamic>),
      published: json['published'] as String?,
      archiveSha256: json['archiveSha256'] as String?,
      retracted: json['retracted'] as bool? ?? false,
    );

Map<String, dynamic> _$PackageVersionToJson(_PackageVersion instance) =>
    <String, dynamic>{
      'version': instance.version,
      'archiveUrl': instance.archiveUrl,
      'pubspec': instance.pubspec,
      'published': instance.published,
      'archiveSha256': instance.archiveSha256,
      'retracted': instance.retracted,
    };

_PackagePubspec _$PackagePubspecFromJson(Map<String, dynamic> json) =>
    _PackagePubspec(
      name: json['name'] as String?,
      description: json['description'] as String?,
      version: json['version'] as String?,
      homepage: json['homepage'] as String?,
      repository: json['repository'] as String?,
      topics:
          (json['topics'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PackagePubspecToJson(_PackagePubspec instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'version': instance.version,
      'homepage': instance.homepage,
      'repository': instance.repository,
      'topics': instance.topics,
    };
