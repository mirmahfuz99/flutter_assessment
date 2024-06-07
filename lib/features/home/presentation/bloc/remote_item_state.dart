import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:flutter_assessment/features/home/data/models/search_result_item.dart';

abstract class ItemState extends Equatable {
  final List<SearchResultItem>? items;
  final DioException? error;

  const ItemState({this.items, this.error});

  @override
  List<Object?> get props => [items, error];
}

class ItemLoading extends ItemState {
  const ItemLoading();
}

class ItemLoaded extends ItemState {
  final bool hasReachedMax;

  const ItemLoaded(List<SearchResultItem> items, {this.hasReachedMax = false}) : super(items: items);

  @override
  List<Object?> get props => [items, hasReachedMax];
}

class ItemError extends ItemState {
  const ItemError(DioException error) : super(error: error);

  @override
  List<Object?> get props => [error];
}
