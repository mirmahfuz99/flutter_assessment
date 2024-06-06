import 'package:flutter_assessment/core/resources/data_state.dart';
import 'package:flutter_assessment/core/usecase/usecase.dart';
import 'package:flutter_assessment/features/home/data/models/item.dart';
import 'package:flutter_assessment/features/home/domain/repository/item_repository.dart';

// class GetArticleUseCase implements UseCase<DataState<List<ArticleEntity>>,void>{
class GetItemUseCase implements UseCase<DataState<List<Item>>,String>{
  
  final ItemRepository _articleRepository;

  GetItemUseCase(this._articleRepository);
  
  @override
  Future<DataState<List<Item>>> call({String? params}) {
    return _articleRepository.getItemList(param: params!);
  }
  
}