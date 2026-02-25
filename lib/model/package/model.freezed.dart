// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageDetailResponse {

 String get name; PackageVersion get latest; List<PackageVersion> get versions; bool get isDiscontinued; String? get replacedBy;
/// Create a copy of PackageDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageDetailResponseCopyWith<PackageDetailResponse> get copyWith => _$PackageDetailResponseCopyWithImpl<PackageDetailResponse>(this as PackageDetailResponse, _$identity);

  /// Serializes this PackageDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageDetailResponse&&(identical(other.name, name) || other.name == name)&&(identical(other.latest, latest) || other.latest == latest)&&const DeepCollectionEquality().equals(other.versions, versions)&&(identical(other.isDiscontinued, isDiscontinued) || other.isDiscontinued == isDiscontinued)&&(identical(other.replacedBy, replacedBy) || other.replacedBy == replacedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,latest,const DeepCollectionEquality().hash(versions),isDiscontinued,replacedBy);

@override
String toString() {
  return 'PackageDetailResponse(name: $name, latest: $latest, versions: $versions, isDiscontinued: $isDiscontinued, replacedBy: $replacedBy)';
}


}

/// @nodoc
abstract mixin class $PackageDetailResponseCopyWith<$Res>  {
  factory $PackageDetailResponseCopyWith(PackageDetailResponse value, $Res Function(PackageDetailResponse) _then) = _$PackageDetailResponseCopyWithImpl;
@useResult
$Res call({
 String name, PackageVersion latest, List<PackageVersion> versions, bool isDiscontinued, String? replacedBy
});


$PackageVersionCopyWith<$Res> get latest;

}
/// @nodoc
class _$PackageDetailResponseCopyWithImpl<$Res>
    implements $PackageDetailResponseCopyWith<$Res> {
  _$PackageDetailResponseCopyWithImpl(this._self, this._then);

  final PackageDetailResponse _self;
  final $Res Function(PackageDetailResponse) _then;

/// Create a copy of PackageDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? latest = null,Object? versions = null,Object? isDiscontinued = null,Object? replacedBy = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latest: null == latest ? _self.latest : latest // ignore: cast_nullable_to_non_nullable
as PackageVersion,versions: null == versions ? _self.versions : versions // ignore: cast_nullable_to_non_nullable
as List<PackageVersion>,isDiscontinued: null == isDiscontinued ? _self.isDiscontinued : isDiscontinued // ignore: cast_nullable_to_non_nullable
as bool,replacedBy: freezed == replacedBy ? _self.replacedBy : replacedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PackageDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageVersionCopyWith<$Res> get latest {
  
  return $PackageVersionCopyWith<$Res>(_self.latest, (value) {
    return _then(_self.copyWith(latest: value));
  });
}
}


/// Adds pattern-matching-related methods to [PackageDetailResponse].
extension PackageDetailResponsePatterns on PackageDetailResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageDetailResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _PackageDetailResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PackageDetailResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  PackageVersion latest,  List<PackageVersion> versions,  bool isDiscontinued,  String? replacedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageDetailResponse() when $default != null:
return $default(_that.name,_that.latest,_that.versions,_that.isDiscontinued,_that.replacedBy);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  PackageVersion latest,  List<PackageVersion> versions,  bool isDiscontinued,  String? replacedBy)  $default,) {final _that = this;
switch (_that) {
case _PackageDetailResponse():
return $default(_that.name,_that.latest,_that.versions,_that.isDiscontinued,_that.replacedBy);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  PackageVersion latest,  List<PackageVersion> versions,  bool isDiscontinued,  String? replacedBy)?  $default,) {final _that = this;
switch (_that) {
case _PackageDetailResponse() when $default != null:
return $default(_that.name,_that.latest,_that.versions,_that.isDiscontinued,_that.replacedBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageDetailResponse implements PackageDetailResponse {
  const _PackageDetailResponse({required this.name, required this.latest, required final  List<PackageVersion> versions, this.isDiscontinued = false, this.replacedBy}): _versions = versions;
  factory _PackageDetailResponse.fromJson(Map<String, dynamic> json) => _$PackageDetailResponseFromJson(json);

@override final  String name;
@override final  PackageVersion latest;
 final  List<PackageVersion> _versions;
@override List<PackageVersion> get versions {
  if (_versions is EqualUnmodifiableListView) return _versions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_versions);
}

@override@JsonKey() final  bool isDiscontinued;
@override final  String? replacedBy;

/// Create a copy of PackageDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageDetailResponseCopyWith<_PackageDetailResponse> get copyWith => __$PackageDetailResponseCopyWithImpl<_PackageDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageDetailResponse&&(identical(other.name, name) || other.name == name)&&(identical(other.latest, latest) || other.latest == latest)&&const DeepCollectionEquality().equals(other._versions, _versions)&&(identical(other.isDiscontinued, isDiscontinued) || other.isDiscontinued == isDiscontinued)&&(identical(other.replacedBy, replacedBy) || other.replacedBy == replacedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,latest,const DeepCollectionEquality().hash(_versions),isDiscontinued,replacedBy);

@override
String toString() {
  return 'PackageDetailResponse(name: $name, latest: $latest, versions: $versions, isDiscontinued: $isDiscontinued, replacedBy: $replacedBy)';
}


}

/// @nodoc
abstract mixin class _$PackageDetailResponseCopyWith<$Res> implements $PackageDetailResponseCopyWith<$Res> {
  factory _$PackageDetailResponseCopyWith(_PackageDetailResponse value, $Res Function(_PackageDetailResponse) _then) = __$PackageDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 String name, PackageVersion latest, List<PackageVersion> versions, bool isDiscontinued, String? replacedBy
});


@override $PackageVersionCopyWith<$Res> get latest;

}
/// @nodoc
class __$PackageDetailResponseCopyWithImpl<$Res>
    implements _$PackageDetailResponseCopyWith<$Res> {
  __$PackageDetailResponseCopyWithImpl(this._self, this._then);

  final _PackageDetailResponse _self;
  final $Res Function(_PackageDetailResponse) _then;

/// Create a copy of PackageDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? latest = null,Object? versions = null,Object? isDiscontinued = null,Object? replacedBy = freezed,}) {
  return _then(_PackageDetailResponse(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latest: null == latest ? _self.latest : latest // ignore: cast_nullable_to_non_nullable
as PackageVersion,versions: null == versions ? _self._versions : versions // ignore: cast_nullable_to_non_nullable
as List<PackageVersion>,isDiscontinued: null == isDiscontinued ? _self.isDiscontinued : isDiscontinued // ignore: cast_nullable_to_non_nullable
as bool,replacedBy: freezed == replacedBy ? _self.replacedBy : replacedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PackageDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageVersionCopyWith<$Res> get latest {
  
  return $PackageVersionCopyWith<$Res>(_self.latest, (value) {
    return _then(_self.copyWith(latest: value));
  });
}
}


/// @nodoc
mixin _$PackageVersion {

 String? get version; String? get archiveUrl; PackagePubspec get pubspec; String? get published; String? get archiveSha256; bool get retracted;
/// Create a copy of PackageVersion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageVersionCopyWith<PackageVersion> get copyWith => _$PackageVersionCopyWithImpl<PackageVersion>(this as PackageVersion, _$identity);

  /// Serializes this PackageVersion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageVersion&&(identical(other.version, version) || other.version == version)&&(identical(other.archiveUrl, archiveUrl) || other.archiveUrl == archiveUrl)&&(identical(other.pubspec, pubspec) || other.pubspec == pubspec)&&(identical(other.published, published) || other.published == published)&&(identical(other.archiveSha256, archiveSha256) || other.archiveSha256 == archiveSha256)&&(identical(other.retracted, retracted) || other.retracted == retracted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,archiveUrl,pubspec,published,archiveSha256,retracted);

@override
String toString() {
  return 'PackageVersion(version: $version, archiveUrl: $archiveUrl, pubspec: $pubspec, published: $published, archiveSha256: $archiveSha256, retracted: $retracted)';
}


}

/// @nodoc
abstract mixin class $PackageVersionCopyWith<$Res>  {
  factory $PackageVersionCopyWith(PackageVersion value, $Res Function(PackageVersion) _then) = _$PackageVersionCopyWithImpl;
@useResult
$Res call({
 String? version, String? archiveUrl, PackagePubspec pubspec, String? published, String? archiveSha256, bool retracted
});


$PackagePubspecCopyWith<$Res> get pubspec;

}
/// @nodoc
class _$PackageVersionCopyWithImpl<$Res>
    implements $PackageVersionCopyWith<$Res> {
  _$PackageVersionCopyWithImpl(this._self, this._then);

  final PackageVersion _self;
  final $Res Function(PackageVersion) _then;

/// Create a copy of PackageVersion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = freezed,Object? archiveUrl = freezed,Object? pubspec = null,Object? published = freezed,Object? archiveSha256 = freezed,Object? retracted = null,}) {
  return _then(_self.copyWith(
version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,archiveUrl: freezed == archiveUrl ? _self.archiveUrl : archiveUrl // ignore: cast_nullable_to_non_nullable
as String?,pubspec: null == pubspec ? _self.pubspec : pubspec // ignore: cast_nullable_to_non_nullable
as PackagePubspec,published: freezed == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as String?,archiveSha256: freezed == archiveSha256 ? _self.archiveSha256 : archiveSha256 // ignore: cast_nullable_to_non_nullable
as String?,retracted: null == retracted ? _self.retracted : retracted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of PackageVersion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackagePubspecCopyWith<$Res> get pubspec {
  
  return $PackagePubspecCopyWith<$Res>(_self.pubspec, (value) {
    return _then(_self.copyWith(pubspec: value));
  });
}
}


/// Adds pattern-matching-related methods to [PackageVersion].
extension PackageVersionPatterns on PackageVersion {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageVersion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageVersion() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageVersion value)  $default,){
final _that = this;
switch (_that) {
case _PackageVersion():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageVersion value)?  $default,){
final _that = this;
switch (_that) {
case _PackageVersion() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? version,  String? archiveUrl,  PackagePubspec pubspec,  String? published,  String? archiveSha256,  bool retracted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageVersion() when $default != null:
return $default(_that.version,_that.archiveUrl,_that.pubspec,_that.published,_that.archiveSha256,_that.retracted);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? version,  String? archiveUrl,  PackagePubspec pubspec,  String? published,  String? archiveSha256,  bool retracted)  $default,) {final _that = this;
switch (_that) {
case _PackageVersion():
return $default(_that.version,_that.archiveUrl,_that.pubspec,_that.published,_that.archiveSha256,_that.retracted);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? version,  String? archiveUrl,  PackagePubspec pubspec,  String? published,  String? archiveSha256,  bool retracted)?  $default,) {final _that = this;
switch (_that) {
case _PackageVersion() when $default != null:
return $default(_that.version,_that.archiveUrl,_that.pubspec,_that.published,_that.archiveSha256,_that.retracted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageVersion implements PackageVersion {
  const _PackageVersion({required this.version, required this.archiveUrl, required this.pubspec, this.published, this.archiveSha256, this.retracted = false});
  factory _PackageVersion.fromJson(Map<String, dynamic> json) => _$PackageVersionFromJson(json);

@override final  String? version;
@override final  String? archiveUrl;
@override final  PackagePubspec pubspec;
@override final  String? published;
@override final  String? archiveSha256;
@override@JsonKey() final  bool retracted;

/// Create a copy of PackageVersion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageVersionCopyWith<_PackageVersion> get copyWith => __$PackageVersionCopyWithImpl<_PackageVersion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageVersionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageVersion&&(identical(other.version, version) || other.version == version)&&(identical(other.archiveUrl, archiveUrl) || other.archiveUrl == archiveUrl)&&(identical(other.pubspec, pubspec) || other.pubspec == pubspec)&&(identical(other.published, published) || other.published == published)&&(identical(other.archiveSha256, archiveSha256) || other.archiveSha256 == archiveSha256)&&(identical(other.retracted, retracted) || other.retracted == retracted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,archiveUrl,pubspec,published,archiveSha256,retracted);

@override
String toString() {
  return 'PackageVersion(version: $version, archiveUrl: $archiveUrl, pubspec: $pubspec, published: $published, archiveSha256: $archiveSha256, retracted: $retracted)';
}


}

/// @nodoc
abstract mixin class _$PackageVersionCopyWith<$Res> implements $PackageVersionCopyWith<$Res> {
  factory _$PackageVersionCopyWith(_PackageVersion value, $Res Function(_PackageVersion) _then) = __$PackageVersionCopyWithImpl;
@override @useResult
$Res call({
 String? version, String? archiveUrl, PackagePubspec pubspec, String? published, String? archiveSha256, bool retracted
});


@override $PackagePubspecCopyWith<$Res> get pubspec;

}
/// @nodoc
class __$PackageVersionCopyWithImpl<$Res>
    implements _$PackageVersionCopyWith<$Res> {
  __$PackageVersionCopyWithImpl(this._self, this._then);

  final _PackageVersion _self;
  final $Res Function(_PackageVersion) _then;

/// Create a copy of PackageVersion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = freezed,Object? archiveUrl = freezed,Object? pubspec = null,Object? published = freezed,Object? archiveSha256 = freezed,Object? retracted = null,}) {
  return _then(_PackageVersion(
version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,archiveUrl: freezed == archiveUrl ? _self.archiveUrl : archiveUrl // ignore: cast_nullable_to_non_nullable
as String?,pubspec: null == pubspec ? _self.pubspec : pubspec // ignore: cast_nullable_to_non_nullable
as PackagePubspec,published: freezed == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as String?,archiveSha256: freezed == archiveSha256 ? _self.archiveSha256 : archiveSha256 // ignore: cast_nullable_to_non_nullable
as String?,retracted: null == retracted ? _self.retracted : retracted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of PackageVersion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackagePubspecCopyWith<$Res> get pubspec {
  
  return $PackagePubspecCopyWith<$Res>(_self.pubspec, (value) {
    return _then(_self.copyWith(pubspec: value));
  });
}
}


/// @nodoc
mixin _$PackagePubspec {

 String? get name; String? get description; String? get version; String? get homepage; String? get repository; List<String> get topics;
/// Create a copy of PackagePubspec
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackagePubspecCopyWith<PackagePubspec> get copyWith => _$PackagePubspecCopyWithImpl<PackagePubspec>(this as PackagePubspec, _$identity);

  /// Serializes this PackagePubspec to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackagePubspec&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.version, version) || other.version == version)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.repository, repository) || other.repository == repository)&&const DeepCollectionEquality().equals(other.topics, topics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,version,homepage,repository,const DeepCollectionEquality().hash(topics));

@override
String toString() {
  return 'PackagePubspec(name: $name, description: $description, version: $version, homepage: $homepage, repository: $repository, topics: $topics)';
}


}

/// @nodoc
abstract mixin class $PackagePubspecCopyWith<$Res>  {
  factory $PackagePubspecCopyWith(PackagePubspec value, $Res Function(PackagePubspec) _then) = _$PackagePubspecCopyWithImpl;
@useResult
$Res call({
 String? name, String? description, String? version, String? homepage, String? repository, List<String> topics
});




}
/// @nodoc
class _$PackagePubspecCopyWithImpl<$Res>
    implements $PackagePubspecCopyWith<$Res> {
  _$PackagePubspecCopyWithImpl(this._self, this._then);

  final PackagePubspec _self;
  final $Res Function(PackagePubspec) _then;

/// Create a copy of PackagePubspec
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? description = freezed,Object? version = freezed,Object? homepage = freezed,Object? repository = freezed,Object? topics = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,repository: freezed == repository ? _self.repository : repository // ignore: cast_nullable_to_non_nullable
as String?,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PackagePubspec].
extension PackagePubspecPatterns on PackagePubspec {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackagePubspec value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackagePubspec() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackagePubspec value)  $default,){
final _that = this;
switch (_that) {
case _PackagePubspec():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackagePubspec value)?  $default,){
final _that = this;
switch (_that) {
case _PackagePubspec() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? description,  String? version,  String? homepage,  String? repository,  List<String> topics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackagePubspec() when $default != null:
return $default(_that.name,_that.description,_that.version,_that.homepage,_that.repository,_that.topics);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? description,  String? version,  String? homepage,  String? repository,  List<String> topics)  $default,) {final _that = this;
switch (_that) {
case _PackagePubspec():
return $default(_that.name,_that.description,_that.version,_that.homepage,_that.repository,_that.topics);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? description,  String? version,  String? homepage,  String? repository,  List<String> topics)?  $default,) {final _that = this;
switch (_that) {
case _PackagePubspec() when $default != null:
return $default(_that.name,_that.description,_that.version,_that.homepage,_that.repository,_that.topics);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackagePubspec implements PackagePubspec {
  const _PackagePubspec({required this.name, required this.description, required this.version, this.homepage, this.repository, final  List<String> topics = const []}): _topics = topics;
  factory _PackagePubspec.fromJson(Map<String, dynamic> json) => _$PackagePubspecFromJson(json);

@override final  String? name;
@override final  String? description;
@override final  String? version;
@override final  String? homepage;
@override final  String? repository;
 final  List<String> _topics;
@override@JsonKey() List<String> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}


/// Create a copy of PackagePubspec
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackagePubspecCopyWith<_PackagePubspec> get copyWith => __$PackagePubspecCopyWithImpl<_PackagePubspec>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackagePubspecToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackagePubspec&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.version, version) || other.version == version)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.repository, repository) || other.repository == repository)&&const DeepCollectionEquality().equals(other._topics, _topics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,version,homepage,repository,const DeepCollectionEquality().hash(_topics));

@override
String toString() {
  return 'PackagePubspec(name: $name, description: $description, version: $version, homepage: $homepage, repository: $repository, topics: $topics)';
}


}

/// @nodoc
abstract mixin class _$PackagePubspecCopyWith<$Res> implements $PackagePubspecCopyWith<$Res> {
  factory _$PackagePubspecCopyWith(_PackagePubspec value, $Res Function(_PackagePubspec) _then) = __$PackagePubspecCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? description, String? version, String? homepage, String? repository, List<String> topics
});




}
/// @nodoc
class __$PackagePubspecCopyWithImpl<$Res>
    implements _$PackagePubspecCopyWith<$Res> {
  __$PackagePubspecCopyWithImpl(this._self, this._then);

  final _PackagePubspec _self;
  final $Res Function(_PackagePubspec) _then;

/// Create a copy of PackagePubspec
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? description = freezed,Object? version = freezed,Object? homepage = freezed,Object? repository = freezed,Object? topics = null,}) {
  return _then(_PackagePubspec(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,repository: freezed == repository ? _self.repository : repository // ignore: cast_nullable_to_non_nullable
as String?,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
