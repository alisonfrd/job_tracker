// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applications_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApplicationsScreenState {

 List<Application> get applications;
/// Create a copy of ApplicationsScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicationsScreenStateCopyWith<ApplicationsScreenState> get copyWith => _$ApplicationsScreenStateCopyWithImpl<ApplicationsScreenState>(this as ApplicationsScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicationsScreenState&&const DeepCollectionEquality().equals(other.applications, applications));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(applications));

@override
String toString() {
  return 'ApplicationsScreenState(applications: $applications)';
}


}

/// @nodoc
abstract mixin class $ApplicationsScreenStateCopyWith<$Res>  {
  factory $ApplicationsScreenStateCopyWith(ApplicationsScreenState value, $Res Function(ApplicationsScreenState) _then) = _$ApplicationsScreenStateCopyWithImpl;
@useResult
$Res call({
 List<Application> applications
});




}
/// @nodoc
class _$ApplicationsScreenStateCopyWithImpl<$Res>
    implements $ApplicationsScreenStateCopyWith<$Res> {
  _$ApplicationsScreenStateCopyWithImpl(this._self, this._then);

  final ApplicationsScreenState _self;
  final $Res Function(ApplicationsScreenState) _then;

/// Create a copy of ApplicationsScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? applications = null,}) {
  return _then(_self.copyWith(
applications: null == applications ? _self.applications : applications // ignore: cast_nullable_to_non_nullable
as List<Application>,
  ));
}

}


/// Adds pattern-matching-related methods to [ApplicationsScreenState].
extension ApplicationsScreenStatePatterns on ApplicationsScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApplicationScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApplicationScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApplicationScreenState value)  $default,){
final _that = this;
switch (_that) {
case _ApplicationScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApplicationScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _ApplicationScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Application> applications)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApplicationScreenState() when $default != null:
return $default(_that.applications);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Application> applications)  $default,) {final _that = this;
switch (_that) {
case _ApplicationScreenState():
return $default(_that.applications);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Application> applications)?  $default,) {final _that = this;
switch (_that) {
case _ApplicationScreenState() when $default != null:
return $default(_that.applications);case _:
  return null;

}
}

}

/// @nodoc


class _ApplicationScreenState implements ApplicationsScreenState {
  const _ApplicationScreenState({required final  List<Application> applications}): _applications = applications;
  

 final  List<Application> _applications;
@override List<Application> get applications {
  if (_applications is EqualUnmodifiableListView) return _applications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_applications);
}


/// Create a copy of ApplicationsScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplicationScreenStateCopyWith<_ApplicationScreenState> get copyWith => __$ApplicationScreenStateCopyWithImpl<_ApplicationScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplicationScreenState&&const DeepCollectionEquality().equals(other._applications, _applications));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_applications));

@override
String toString() {
  return 'ApplicationsScreenState(applications: $applications)';
}


}

/// @nodoc
abstract mixin class _$ApplicationScreenStateCopyWith<$Res> implements $ApplicationsScreenStateCopyWith<$Res> {
  factory _$ApplicationScreenStateCopyWith(_ApplicationScreenState value, $Res Function(_ApplicationScreenState) _then) = __$ApplicationScreenStateCopyWithImpl;
@override @useResult
$Res call({
 List<Application> applications
});




}
/// @nodoc
class __$ApplicationScreenStateCopyWithImpl<$Res>
    implements _$ApplicationScreenStateCopyWith<$Res> {
  __$ApplicationScreenStateCopyWithImpl(this._self, this._then);

  final _ApplicationScreenState _self;
  final $Res Function(_ApplicationScreenState) _then;

/// Create a copy of ApplicationsScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? applications = null,}) {
  return _then(_ApplicationScreenState(
applications: null == applications ? _self._applications : applications // ignore: cast_nullable_to_non_nullable
as List<Application>,
  ));
}


}

// dart format on
