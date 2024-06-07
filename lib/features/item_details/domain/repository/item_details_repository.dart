import 'package:flutter_assessment/core/resources/data_state.dart';
import 'package:flutter_assessment/features/item_details/data/model/item_details.dart';

abstract class ItemDetailsRepository {

  Future<DataState<ItemDetails>> getItemDetails({required String param});
}