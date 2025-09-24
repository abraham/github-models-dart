// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prompt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Prompt {

/// The model to use for this prompt.
 String get model;/// Name or title of the prompt.
 String? get name;/// Description of the prompt's purpose.
 String? get description;/// Version of the prompt.
 String? get version;/// List of messages in the conversation.
 List<Message>? get messages;/// Model-specific parameters.
@JsonKey(name: 'model_parameters') ModelParameters? get modelParameters;/// Test cases for validating the prompt.
@JsonKey(name: 'test_data') List<TestData>? get testData;
/// Create a copy of Prompt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromptCopyWith<Prompt> get copyWith => _$PromptCopyWithImpl<Prompt>(this as Prompt, _$identity);

  /// Serializes this Prompt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Prompt&&(identical(other.model, model) || other.model == model)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.modelParameters, modelParameters) || other.modelParameters == modelParameters)&&const DeepCollectionEquality().equals(other.testData, testData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,name,description,version,const DeepCollectionEquality().hash(messages),modelParameters,const DeepCollectionEquality().hash(testData));

@override
String toString() {
  return 'Prompt(model: $model, name: $name, description: $description, version: $version, messages: $messages, modelParameters: $modelParameters, testData: $testData)';
}


}

/// @nodoc
abstract mixin class $PromptCopyWith<$Res>  {
  factory $PromptCopyWith(Prompt value, $Res Function(Prompt) _then) = _$PromptCopyWithImpl;
@useResult
$Res call({
 String model, String? name, String? description, String? version, List<Message>? messages,@JsonKey(name: 'model_parameters') ModelParameters? modelParameters,@JsonKey(name: 'test_data') List<TestData>? testData
});


$ModelParametersCopyWith<$Res>? get modelParameters;

}
/// @nodoc
class _$PromptCopyWithImpl<$Res>
    implements $PromptCopyWith<$Res> {
  _$PromptCopyWithImpl(this._self, this._then);

  final Prompt _self;
  final $Res Function(Prompt) _then;

/// Create a copy of Prompt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = null,Object? name = freezed,Object? description = freezed,Object? version = freezed,Object? messages = freezed,Object? modelParameters = freezed,Object? testData = freezed,}) {
  return _then(_self.copyWith(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,messages: freezed == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<Message>?,modelParameters: freezed == modelParameters ? _self.modelParameters : modelParameters // ignore: cast_nullable_to_non_nullable
as ModelParameters?,testData: freezed == testData ? _self.testData : testData // ignore: cast_nullable_to_non_nullable
as List<TestData>?,
  ));
}
/// Create a copy of Prompt
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModelParametersCopyWith<$Res>? get modelParameters {
    if (_self.modelParameters == null) {
    return null;
  }

  return $ModelParametersCopyWith<$Res>(_self.modelParameters!, (value) {
    return _then(_self.copyWith(modelParameters: value));
  });
}
}


/// Adds pattern-matching-related methods to [Prompt].
extension PromptPatterns on Prompt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Prompt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Prompt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Prompt value)  $default,){
final _that = this;
switch (_that) {
case _Prompt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Prompt value)?  $default,){
final _that = this;
switch (_that) {
case _Prompt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String model,  String? name,  String? description,  String? version,  List<Message>? messages, @JsonKey(name: 'model_parameters')  ModelParameters? modelParameters, @JsonKey(name: 'test_data')  List<TestData>? testData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Prompt() when $default != null:
return $default(_that.model,_that.name,_that.description,_that.version,_that.messages,_that.modelParameters,_that.testData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String model,  String? name,  String? description,  String? version,  List<Message>? messages, @JsonKey(name: 'model_parameters')  ModelParameters? modelParameters, @JsonKey(name: 'test_data')  List<TestData>? testData)  $default,) {final _that = this;
switch (_that) {
case _Prompt():
return $default(_that.model,_that.name,_that.description,_that.version,_that.messages,_that.modelParameters,_that.testData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String model,  String? name,  String? description,  String? version,  List<Message>? messages, @JsonKey(name: 'model_parameters')  ModelParameters? modelParameters, @JsonKey(name: 'test_data')  List<TestData>? testData)?  $default,) {final _that = this;
switch (_that) {
case _Prompt() when $default != null:
return $default(_that.model,_that.name,_that.description,_that.version,_that.messages,_that.modelParameters,_that.testData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Prompt implements Prompt {
  const _Prompt({required this.model, this.name, this.description, this.version, final  List<Message>? messages, @JsonKey(name: 'model_parameters') this.modelParameters, @JsonKey(name: 'test_data') final  List<TestData>? testData}): _messages = messages,_testData = testData;
  factory _Prompt.fromJson(Map<String, dynamic> json) => _$PromptFromJson(json);

/// The model to use for this prompt.
@override final  String model;
/// Name or title of the prompt.
@override final  String? name;
/// Description of the prompt's purpose.
@override final  String? description;
/// Version of the prompt.
@override final  String? version;
/// List of messages in the conversation.
 final  List<Message>? _messages;
/// List of messages in the conversation.
@override List<Message>? get messages {
  final value = _messages;
  if (value == null) return null;
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Model-specific parameters.
@override@JsonKey(name: 'model_parameters') final  ModelParameters? modelParameters;
/// Test cases for validating the prompt.
 final  List<TestData>? _testData;
/// Test cases for validating the prompt.
@override@JsonKey(name: 'test_data') List<TestData>? get testData {
  final value = _testData;
  if (value == null) return null;
  if (_testData is EqualUnmodifiableListView) return _testData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Prompt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromptCopyWith<_Prompt> get copyWith => __$PromptCopyWithImpl<_Prompt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromptToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Prompt&&(identical(other.model, model) || other.model == model)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.modelParameters, modelParameters) || other.modelParameters == modelParameters)&&const DeepCollectionEquality().equals(other._testData, _testData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,model,name,description,version,const DeepCollectionEquality().hash(_messages),modelParameters,const DeepCollectionEquality().hash(_testData));

@override
String toString() {
  return 'Prompt(model: $model, name: $name, description: $description, version: $version, messages: $messages, modelParameters: $modelParameters, testData: $testData)';
}


}

/// @nodoc
abstract mixin class _$PromptCopyWith<$Res> implements $PromptCopyWith<$Res> {
  factory _$PromptCopyWith(_Prompt value, $Res Function(_Prompt) _then) = __$PromptCopyWithImpl;
@override @useResult
$Res call({
 String model, String? name, String? description, String? version, List<Message>? messages,@JsonKey(name: 'model_parameters') ModelParameters? modelParameters,@JsonKey(name: 'test_data') List<TestData>? testData
});


@override $ModelParametersCopyWith<$Res>? get modelParameters;

}
/// @nodoc
class __$PromptCopyWithImpl<$Res>
    implements _$PromptCopyWith<$Res> {
  __$PromptCopyWithImpl(this._self, this._then);

  final _Prompt _self;
  final $Res Function(_Prompt) _then;

/// Create a copy of Prompt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = null,Object? name = freezed,Object? description = freezed,Object? version = freezed,Object? messages = freezed,Object? modelParameters = freezed,Object? testData = freezed,}) {
  return _then(_Prompt(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,messages: freezed == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<Message>?,modelParameters: freezed == modelParameters ? _self.modelParameters : modelParameters // ignore: cast_nullable_to_non_nullable
as ModelParameters?,testData: freezed == testData ? _self._testData : testData // ignore: cast_nullable_to_non_nullable
as List<TestData>?,
  ));
}

/// Create a copy of Prompt
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModelParametersCopyWith<$Res>? get modelParameters {
    if (_self.modelParameters == null) {
    return null;
  }

  return $ModelParametersCopyWith<$Res>(_self.modelParameters!, (value) {
    return _then(_self.copyWith(modelParameters: value));
  });
}
}

// dart format on
