// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Application {

 String get id; String get companyName; String get positionTitle; ApplicationStatus get status; DateTime get appliedAt; String? get notes; int? get salaryCents; EmploymentType get employmentType; LocationScope get locationScope; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Application
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicationCopyWith<Application> get copyWith => _$ApplicationCopyWithImpl<Application>(this as Application, _$identity);

  /// Serializes this Application to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Application&&(identical(other.id, id) || other.id == id)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.positionTitle, positionTitle) || other.positionTitle == positionTitle)&&(identical(other.status, status) || other.status == status)&&(identical(other.appliedAt, appliedAt) || other.appliedAt == appliedAt)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.salaryCents, salaryCents) || other.salaryCents == salaryCents)&&(identical(other.employmentType, employmentType) || other.employmentType == employmentType)&&(identical(other.locationScope, locationScope) || other.locationScope == locationScope)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyName,positionTitle,status,appliedAt,notes,salaryCents,employmentType,locationScope,createdAt,updatedAt);

@override
String toString() {
  return 'Application(id: $id, companyName: $companyName, positionTitle: $positionTitle, status: $status, appliedAt: $appliedAt, notes: $notes, salaryCents: $salaryCents, employmentType: $employmentType, locationScope: $locationScope, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ApplicationCopyWith<$Res>  {
  factory $ApplicationCopyWith(Application value, $Res Function(Application) _then) = _$ApplicationCopyWithImpl;
@useResult
$Res call({
 String id, String companyName, String positionTitle, ApplicationStatus status, DateTime appliedAt, String? notes, int? salaryCents, EmploymentType employmentType, LocationScope locationScope, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$ApplicationCopyWithImpl<$Res>
    implements $ApplicationCopyWith<$Res> {
  _$ApplicationCopyWithImpl(this._self, this._then);

  final Application _self;
  final $Res Function(Application) _then;

/// Create a copy of Application
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyName = null,Object? positionTitle = null,Object? status = null,Object? appliedAt = null,Object? notes = freezed,Object? salaryCents = freezed,Object? employmentType = null,Object? locationScope = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,positionTitle: null == positionTitle ? _self.positionTitle : positionTitle // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ApplicationStatus,appliedAt: null == appliedAt ? _self.appliedAt : appliedAt // ignore: cast_nullable_to_non_nullable
as DateTime,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,salaryCents: freezed == salaryCents ? _self.salaryCents : salaryCents // ignore: cast_nullable_to_non_nullable
as int?,employmentType: null == employmentType ? _self.employmentType : employmentType // ignore: cast_nullable_to_non_nullable
as EmploymentType,locationScope: null == locationScope ? _self.locationScope : locationScope // ignore: cast_nullable_to_non_nullable
as LocationScope,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Application].
extension ApplicationPatterns on Application {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Application value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Application() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Application value)  $default,){
final _that = this;
switch (_that) {
case _Application():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Application value)?  $default,){
final _that = this;
switch (_that) {
case _Application() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String companyName,  String positionTitle,  ApplicationStatus status,  DateTime appliedAt,  String? notes,  int? salaryCents,  EmploymentType employmentType,  LocationScope locationScope,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Application() when $default != null:
return $default(_that.id,_that.companyName,_that.positionTitle,_that.status,_that.appliedAt,_that.notes,_that.salaryCents,_that.employmentType,_that.locationScope,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String companyName,  String positionTitle,  ApplicationStatus status,  DateTime appliedAt,  String? notes,  int? salaryCents,  EmploymentType employmentType,  LocationScope locationScope,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Application():
return $default(_that.id,_that.companyName,_that.positionTitle,_that.status,_that.appliedAt,_that.notes,_that.salaryCents,_that.employmentType,_that.locationScope,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String companyName,  String positionTitle,  ApplicationStatus status,  DateTime appliedAt,  String? notes,  int? salaryCents,  EmploymentType employmentType,  LocationScope locationScope,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Application() when $default != null:
return $default(_that.id,_that.companyName,_that.positionTitle,_that.status,_that.appliedAt,_that.notes,_that.salaryCents,_that.employmentType,_that.locationScope,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Application implements Application {
  const _Application({required this.id, required this.companyName, required this.positionTitle, required this.status, required this.appliedAt, this.notes, this.salaryCents, required this.employmentType, required this.locationScope, required this.createdAt, required this.updatedAt});
  factory _Application.fromJson(Map<String, dynamic> json) => _$ApplicationFromJson(json);

@override final  String id;
@override final  String companyName;
@override final  String positionTitle;
@override final  ApplicationStatus status;
@override final  DateTime appliedAt;
@override final  String? notes;
@override final  int? salaryCents;
@override final  EmploymentType employmentType;
@override final  LocationScope locationScope;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of Application
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplicationCopyWith<_Application> get copyWith => __$ApplicationCopyWithImpl<_Application>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApplicationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Application&&(identical(other.id, id) || other.id == id)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.positionTitle, positionTitle) || other.positionTitle == positionTitle)&&(identical(other.status, status) || other.status == status)&&(identical(other.appliedAt, appliedAt) || other.appliedAt == appliedAt)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.salaryCents, salaryCents) || other.salaryCents == salaryCents)&&(identical(other.employmentType, employmentType) || other.employmentType == employmentType)&&(identical(other.locationScope, locationScope) || other.locationScope == locationScope)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyName,positionTitle,status,appliedAt,notes,salaryCents,employmentType,locationScope,createdAt,updatedAt);

@override
String toString() {
  return 'Application(id: $id, companyName: $companyName, positionTitle: $positionTitle, status: $status, appliedAt: $appliedAt, notes: $notes, salaryCents: $salaryCents, employmentType: $employmentType, locationScope: $locationScope, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ApplicationCopyWith<$Res> implements $ApplicationCopyWith<$Res> {
  factory _$ApplicationCopyWith(_Application value, $Res Function(_Application) _then) = __$ApplicationCopyWithImpl;
@override @useResult
$Res call({
 String id, String companyName, String positionTitle, ApplicationStatus status, DateTime appliedAt, String? notes, int? salaryCents, EmploymentType employmentType, LocationScope locationScope, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$ApplicationCopyWithImpl<$Res>
    implements _$ApplicationCopyWith<$Res> {
  __$ApplicationCopyWithImpl(this._self, this._then);

  final _Application _self;
  final $Res Function(_Application) _then;

/// Create a copy of Application
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyName = null,Object? positionTitle = null,Object? status = null,Object? appliedAt = null,Object? notes = freezed,Object? salaryCents = freezed,Object? employmentType = null,Object? locationScope = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Application(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,positionTitle: null == positionTitle ? _self.positionTitle : positionTitle // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ApplicationStatus,appliedAt: null == appliedAt ? _self.appliedAt : appliedAt // ignore: cast_nullable_to_non_nullable
as DateTime,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,salaryCents: freezed == salaryCents ? _self.salaryCents : salaryCents // ignore: cast_nullable_to_non_nullable
as int?,employmentType: null == employmentType ? _self.employmentType : employmentType // ignore: cast_nullable_to_non_nullable
as EmploymentType,locationScope: null == locationScope ? _self.locationScope : locationScope // ignore: cast_nullable_to_non_nullable
as LocationScope,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
