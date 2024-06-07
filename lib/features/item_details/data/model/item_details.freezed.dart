// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemDetails _$ItemDetailsFromJson(Map<String, dynamic> json) {
  return _ItemDetails.fromJson(json);
}

/// @nodoc
mixin _$ItemDetails {
  @JsonKey(name: 'id')
  int? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDetailsCopyWith<ItemDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDetailsCopyWith<$Res> {
  factory $ItemDetailsCopyWith(
          ItemDetails value, $Res Function(ItemDetails) then) =
      _$ItemDetailsCopyWithImpl<$Res, ItemDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? userName,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$ItemDetailsCopyWithImpl<$Res, $Val extends ItemDetails>
    implements $ItemDetailsCopyWith<$Res> {
  _$ItemDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemDetailsImplCopyWith<$Res>
    implements $ItemDetailsCopyWith<$Res> {
  factory _$$ItemDetailsImplCopyWith(
          _$ItemDetailsImpl value, $Res Function(_$ItemDetailsImpl) then) =
      __$$ItemDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? userName,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$ItemDetailsImplCopyWithImpl<$Res>
    extends _$ItemDetailsCopyWithImpl<$Res, _$ItemDetailsImpl>
    implements _$$ItemDetailsImplCopyWith<$Res> {
  __$$ItemDetailsImplCopyWithImpl(
      _$ItemDetailsImpl _value, $Res Function(_$ItemDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ItemDetailsImpl(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDetailsImpl implements _ItemDetails {
  const _$ItemDetailsImpl(
      {@JsonKey(name: 'id') this.userName, @JsonKey(name: 'name') this.name});

  factory _$ItemDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? userName;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'ItemDetails(userName: $userName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDetailsImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemDetailsImplCopyWith<_$ItemDetailsImpl> get copyWith =>
      __$$ItemDetailsImplCopyWithImpl<_$ItemDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDetailsImplToJson(
      this,
    );
  }
}

abstract class _ItemDetails implements ItemDetails {
  const factory _ItemDetails(
      {@JsonKey(name: 'id') final int? userName,
      @JsonKey(name: 'name') final String? name}) = _$ItemDetailsImpl;

  factory _ItemDetails.fromJson(Map<String, dynamic> json) =
      _$ItemDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get userName;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ItemDetailsImplCopyWith<_$ItemDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
