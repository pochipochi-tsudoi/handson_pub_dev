// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DetailsScreenState {

 PackageDetailResponse? get packageDetail;
/// Create a copy of DetailsScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailsScreenStateCopyWith<DetailsScreenState> get copyWith => _$DetailsScreenStateCopyWithImpl<DetailsScreenState>(this as DetailsScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsScreenState&&(identical(other.packageDetail, packageDetail) || other.packageDetail == packageDetail));
}


@override
int get hashCode => Object.hash(runtimeType,packageDetail);

@override
String toString() {
  return 'DetailsScreenState(packageDetail: $packageDetail)';
}


}

/// @nodoc
abstract mixin class $DetailsScreenStateCopyWith<$Res>  {
  factory $DetailsScreenStateCopyWith(DetailsScreenState value, $Res Function(DetailsScreenState) _then) = _$DetailsScreenStateCopyWithImpl;
@useResult
$Res call({
 PackageDetailResponse? packageDetail
});


$PackageDetailResponseCopyWith<$Res>? get packageDetail;

}
/// @nodoc
class _$DetailsScreenStateCopyWithImpl<$Res>
    implements $DetailsScreenStateCopyWith<$Res> {
  _$DetailsScreenStateCopyWithImpl(this._self, this._then);

  final DetailsScreenState _self;
  final $Res Function(DetailsScreenState) _then;

/// Create a copy of DetailsScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packageDetail = freezed,}) {
  return _then(_self.copyWith(
packageDetail: freezed == packageDetail ? _self.packageDetail : packageDetail // ignore: cast_nullable_to_non_nullable
as PackageDetailResponse?,
  ));
}
/// Create a copy of DetailsScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageDetailResponseCopyWith<$Res>? get packageDetail {
    if (_self.packageDetail == null) {
    return null;
  }

  return $PackageDetailResponseCopyWith<$Res>(_self.packageDetail!, (value) {
    return _then(_self.copyWith(packageDetail: value));
  });
}
}


/// Adds pattern-matching-related methods to [DetailsScreenState].
extension DetailsScreenStatePatterns on DetailsScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetailsScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetailsScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetailsScreenState value)  $default,){
final _that = this;
switch (_that) {
case _DetailsScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetailsScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _DetailsScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PackageDetailResponse? packageDetail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetailsScreenState() when $default != null:
return $default(_that.packageDetail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PackageDetailResponse? packageDetail)  $default,) {final _that = this;
switch (_that) {
case _DetailsScreenState():
return $default(_that.packageDetail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PackageDetailResponse? packageDetail)?  $default,) {final _that = this;
switch (_that) {
case _DetailsScreenState() when $default != null:
return $default(_that.packageDetail);case _:
  return null;

}
}

}

/// @nodoc


class _DetailsScreenState implements DetailsScreenState {
  const _DetailsScreenState({required this.packageDetail});
  

@override final  PackageDetailResponse? packageDetail;

/// Create a copy of DetailsScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailsScreenStateCopyWith<_DetailsScreenState> get copyWith => __$DetailsScreenStateCopyWithImpl<_DetailsScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailsScreenState&&(identical(other.packageDetail, packageDetail) || other.packageDetail == packageDetail));
}


@override
int get hashCode => Object.hash(runtimeType,packageDetail);

@override
String toString() {
  return 'DetailsScreenState(packageDetail: $packageDetail)';
}


}

/// @nodoc
abstract mixin class _$DetailsScreenStateCopyWith<$Res> implements $DetailsScreenStateCopyWith<$Res> {
  factory _$DetailsScreenStateCopyWith(_DetailsScreenState value, $Res Function(_DetailsScreenState) _then) = __$DetailsScreenStateCopyWithImpl;
@override @useResult
$Res call({
 PackageDetailResponse? packageDetail
});


@override $PackageDetailResponseCopyWith<$Res>? get packageDetail;

}
/// @nodoc
class __$DetailsScreenStateCopyWithImpl<$Res>
    implements _$DetailsScreenStateCopyWith<$Res> {
  __$DetailsScreenStateCopyWithImpl(this._self, this._then);

  final _DetailsScreenState _self;
  final $Res Function(_DetailsScreenState) _then;

/// Create a copy of DetailsScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packageDetail = freezed,}) {
  return _then(_DetailsScreenState(
packageDetail: freezed == packageDetail ? _self.packageDetail : packageDetail // ignore: cast_nullable_to_non_nullable
as PackageDetailResponse?,
  ));
}

/// Create a copy of DetailsScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageDetailResponseCopyWith<$Res>? get packageDetail {
    if (_self.packageDetail == null) {
    return null;
  }

  return $PackageDetailResponseCopyWith<$Res>(_self.packageDetail!, (value) {
    return _then(_self.copyWith(packageDetail: value));
  });
}
}

// dart format on
