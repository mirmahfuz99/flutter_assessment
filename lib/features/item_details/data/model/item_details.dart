import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_details.freezed.dart';
part 'item_details.g.dart';

@freezed
class ItemDetails with _$ItemDetails {

  const factory ItemDetails({
    @JsonKey(name: 'id') int? userName,
    @JsonKey(name: 'name') String? name,
  }) = _ItemDetails;

  factory ItemDetails.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailsFromJson(json);

}