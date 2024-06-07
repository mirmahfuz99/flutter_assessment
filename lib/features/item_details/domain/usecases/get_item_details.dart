import 'package:flutter_assessment/core/resources/data_state.dart';
import 'package:flutter_assessment/core/usecase/usecase.dart';
import 'package:flutter_assessment/features/item_details/data/model/item_details.dart';
import 'package:flutter_assessment/features/item_details/domain/repository/item_details_repository.dart';

// class GetArticleUseCase implements UseCase<DataState<List<ArticleEntity>>,void>{
class GetItemDetailsUseCase implements UseCase<DataState<ItemDetails>,String>{
  
  final ItemDetailsRepository _itemDetailsRepository;

  GetItemDetailsUseCase(this._itemDetailsRepository);
  
  @override
  Future<DataState<ItemDetails>> call({String? params}) {
    return _itemDetailsRepository.getItemDetails(page: params!);
  }
  
}