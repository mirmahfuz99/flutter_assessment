import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_assessment/core/resources/data_state.dart';
import 'package:flutter_assessment/features/home/data/data_source/remote/item_remote_data_source.dart';
import 'package:flutter_assessment/features/home/data/models/item.dart';
import 'package:flutter_assessment/features/home/domain/repository/item_repository.dart';

class ItemRepositoryImpl extends ItemRepository {

  late ItemRemoteDataSource itemRemoteDataSource;

  ItemRepositoryImpl({required this.itemRemoteDataSource});

  @override
  Future<DataState<List<Item>>> getItemList({required String param})async {

    try {
      final itemData = await itemRemoteDataSource.getItemList(param: param);
      final items = [Item.fromJson(itemData)];
      return DataSuccess(items);
    } on DioException catch(e){
      if (kDebugMode) {
        print(e);
      }
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<Item>> getItemDetails({required String param}) async {

    try {
      final itemData = await itemRemoteDataSource.getItemDetails(itemID: param);
      final items = Item.fromJson(itemData);
      return DataSuccess(items);
    } on DioException catch(e){
      if (kDebugMode) {
        print(e);
      }
      return DataFailed(e);
    }
  }

}