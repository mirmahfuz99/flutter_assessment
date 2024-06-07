import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result_item.freezed.dart';
part 'search_result_item.g.dart';

@freezed
class SearchResultItem with _$SearchResultItem {

  const factory SearchResultItem({
    @JsonKey(name: 'id') int? userName,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'stargazers_count') int? stargazersCount,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'owner') Owner? owner,
  }) = _SearchResultItem;

  factory SearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$SearchResultItemFromJson(json);

}

@freezed
class Owner with _$Owner {

  const factory Owner({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'type') String? type,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) =>
      _$OwnerFromJson(json);

}