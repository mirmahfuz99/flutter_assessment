import 'package:dio/dio.dart';
import 'package:flutter_assessment/core/data/remote/api_endpoints.dart';
import 'package:flutter_assessment/core/data/remote/dio_client.dart';

abstract class SearchResultDataSource {

  Future<dynamic> getSearchResultList({required String param});
}

class ItemDataSourceImpl extends SearchResultDataSource {
  late DioClient dioClient;

  ItemDataSourceImpl({required this.dioClient});

  @override
  Future getSearchResultList({required String param}) async {
    print("param_is_updating$param");
    var headers = {
      'Content-Type': 'Accept: application/vnd.github+json',
    };
    try {
      final httpResponse = await dioClient.get(
        APIPathHelper.searchResultList(page: param),
        options: Options(headers: headers),
      );
      return httpResponse;
    } catch (e) {
      rethrow;
    }
  }
}