import 'package:flutter_assessment/core/resources/data_state.dart';
import 'package:flutter_assessment/features/home/data/models/search_result_item.dart';

abstract class SearchResultRepository {

  Future<DataState<List<SearchResultItem>>> getSearchResultList({required String page});
}