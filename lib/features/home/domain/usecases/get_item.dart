import 'package:flutter_assessment/core/resources/data_state.dart';
import 'package:flutter_assessment/core/usecase/usecase.dart';
import 'package:flutter_assessment/features/home/data/models/search_result_item.dart';
import 'package:flutter_assessment/features/home/domain/repository/search_repository.dart';

// class GetArticleUseCase implements UseCase<DataState<List<ArticleEntity>>,void>{
class GetItemUseCase implements UseCase<DataState<List<SearchResultItem>>,String>{
  
  final SearchResultRepository _articleRepository;

  GetItemUseCase(this._articleRepository);
  
  @override
  Future<DataState<List<SearchResultItem>>> call({String? params}) {
    return _articleRepository.getSearchResultList(page: params!);
  }
  
}