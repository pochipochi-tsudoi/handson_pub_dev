// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    _SearchResponse(
      packages: (json['packages'] as List<dynamic>)
          .map((e) => Package.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResponseToJson(_SearchResponse instance) =>
    <String, dynamic>{'packages': instance.packages};

_Package _$PackageFromJson(Map<String, dynamic> json) =>
    _Package(package: json['package'] as String);

Map<String, dynamic> _$PackageToJson(_Package instance) => <String, dynamic>{
  'package': instance.package,
};
