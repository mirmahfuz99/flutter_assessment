import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_assessment/core/resources/data_state.dart';
import 'package:flutter_assessment/features/home/data/data_source/remote/search_result_data_source.dart';
import 'package:flutter_assessment/features/home/data/models/search_result_item.dart';
import 'package:flutter_assessment/features/home/domain/repository/search_repository.dart';

class SearchResultRepositoryImpl extends SearchResultRepository {

  late SearchResultDataSource itemRemoteDataSource;

  SearchResultRepositoryImpl({required this.itemRemoteDataSource});

  @override
  Future<DataState<List<SearchResultItem>>> getSearchResultList({required String page}) async {
    List<SearchResultItem> list = [];
    try {
      final itemData = await itemRemoteDataSource.getSearchResultList(param: page);
      print(itemData);
      itemData['items'].forEach((searchItem) {
        list.add(SearchResultItem.fromJson(searchItem));
      });
      return DataSuccess(list);
    } on DioException catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return DataFailed(e);
    }
  }

}
/*

jsonDecode(jsonString).forEach((product){
_productList.add(Product.fromJson(product));
});*/
