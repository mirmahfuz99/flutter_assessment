// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemDetailsImpl _$$ItemDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ItemDetailsImpl(
      userName: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ItemDetailsImplToJson(_$ItemDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.userName,
      'name': instance.name,
    };
