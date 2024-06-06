import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:flutter_assessment/features/home/data/models/item.dart';

abstract class ItemState extends Equatable {
  final List<Item> ? items;
  final DioException ? error;
  
  const ItemState({this.items,this.error});
  
  @override
  List<Object> get props => [items!, error!];
}

class ItemLoading extends ItemState {
  const ItemLoading();
}

class ItemLoaded extends ItemState {
  const ItemLoaded(List<Item> items) : super(items: items);
}

class ItemError extends ItemState {
  const ItemError(DioException error) : super(error: error);
}