// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultItemImpl _$$SearchResultItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultItemImpl(
      userName: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      stargazersCount: (json['stargazers_count'] as num?)?.toInt(),
      updatedAt: json['updated_at'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchResultItemImplToJson(
        _$SearchResultItemImpl instance) =>
    <String, dynamic>{
      'id': instance.userName,
      'name': instance.name,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
      'updated_at': instance.updatedAt,
      'owner': instance.owner,
    };

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      id: (json['id'] as num?)?.toInt(),
      avatarUrl: json['avatar_url'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'type': instance.type,
    };
