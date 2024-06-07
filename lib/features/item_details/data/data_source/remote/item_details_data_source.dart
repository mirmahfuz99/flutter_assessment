import 'package:dio/dio.dart';
import 'package:flutter_assessment/core/data/remote/api_endpoints.dart';
import 'package:flutter_assessment/core/data/remote/dio_client.dart';

abstract class ItemDetailsDataSource {

  Future<dynamic> getItemDetails({required String itemID});

}

class ItemDetailsDataSourceImpl extends ItemDetailsDataSource {
  late DioClient dioClient;

  ItemDetailsDataSourceImpl({required this.dioClient});
  

  @override
  Future getItemDetails({required String itemID}) async {
    String token = '';
    var headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'Bearer $token'
    };
    try {
      final httpResponse = await dioClient.get(
        APIPathHelper.itemDetails(param: itemID),
        options: Options(headers: headers),
      );
      return httpResponse;
    } catch (e) {
      rethrow;
    }
  }

}