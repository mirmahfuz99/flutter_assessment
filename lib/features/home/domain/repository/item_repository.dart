import 'package:flutter_assessment/core/resources/data_state.dart';
import 'package:flutter_assessment/features/home/data/models/item.dart';

abstract class ItemRepository {

  Future<DataState<List<Item>>> getItemList({required String param});
  Future<DataState<Item>> getItemDetails({required String param});
}