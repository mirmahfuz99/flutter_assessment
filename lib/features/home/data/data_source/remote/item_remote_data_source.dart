
import 'package:dio/dio.dart';
import 'package:flutter_assessment/core/data/remote/api_endpoints.dart';
import 'package:flutter_assessment/core/data/remote/dio_client.dart';

abstract class ItemRemoteDataSource {

  Future<dynamic> getItemList({required String param});
  Future<dynamic> getItemDetails({required String itemID});

}

class ItemDataSourceImpl extends ItemRemoteDataSource {
  late DioClient dioClient;

  ItemDataSourceImpl({required this.dioClient});

  @override
  Future getItemList({required String param}) async {
    String token = '';
    var headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'Bearer $token'
    };
    try {
      final httpResponse = await dioClient.get(
        APIPathHelper.itemList(param: param),
        options: Options(headers: headers),
      );
      return httpResponse;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future getItemDetails({required String itemID}) async {
    String token = '';
    var headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'Bearer $token'
    };
    try {
      final httpResponse = await dioClient.get(
        APIPathHelper.itemList(param: itemID),
        options: Options(headers: headers),
      );
      return httpResponse;
    } catch (e) {
      rethrow;
    }
  }

}