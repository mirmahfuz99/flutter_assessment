import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_assessment/core/resources/data_state.dart';
import 'package:flutter_assessment/features/item_details/data/data_source/remote/item_details_data_source.dart';
import 'package:flutter_assessment/features/item_details/data/model/item_details.dart';
import 'package:flutter_assessment/features/item_details/domain/repository/item_details_repository.dart';

class ItemDetailsRepositoryImpl extends ItemDetailsRepository {

  late ItemDetailsDataSource itemDetailsDataSource;

  ItemDetailsRepositoryImpl({required this.itemDetailsDataSource});

  @override
  Future<DataState<ItemDetails>> getItemDetails({required String param})async {

    try {
      final itemData = await itemDetailsDataSource.getItemDetails(itemID: param);
      final items = ItemDetails.fromJson(itemData);
      return DataSuccess(items);
    } on DioException catch(e){
      if (kDebugMode) {
        print(e);
      }
      return DataFailed(e);
    }
  }

}