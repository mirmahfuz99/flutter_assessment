import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:flutter_assessment/features/item_details/data/model/item_details.dart';

abstract class ItemDetailsState extends Equatable {
  final ItemDetails ? itemDetails;
  final DioException ? error;
  
  const ItemDetailsState({this.itemDetails,this.error});
  
  @override
  List<Object> get props => [itemDetails!, error!];
}

class ItemDetailsLoading extends ItemDetailsState {
  const ItemDetailsLoading();
}

class ItemDetailsLoaded extends ItemDetailsState {
  const ItemDetailsLoaded(ItemDetails itemDetails) : super(itemDetails: itemDetails);
}

class ItemDetailsError extends ItemDetailsState {
  const ItemDetailsError(DioException error) : super(error: error);
}