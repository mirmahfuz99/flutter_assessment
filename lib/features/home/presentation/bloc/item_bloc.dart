import 'package:flutter_assessment/core/resources/data_state.dart';
import 'package:flutter_assessment/features/home/domain/usecases/get_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_assessment/features/home/presentation/bloc/item_event.dart';
import 'package:flutter_assessment/features/home/presentation/bloc/remote_item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  final GetItemUseCase _getItemUseCase;
  int _currentPage = 1;
  bool _hasReachedMax = false;

  ItemBloc(this._getItemUseCase) : super(const ItemLoading()) {
    on<GetItems>(_onGetItems);
    on<LoadMoreItems>(_onLoadMoreItems);
  }

  Future<void> _onGetItems(GetItems event, Emitter<ItemState> emit) async {
    _currentPage = 1;
    _hasReachedMax = false;
    final dataState = await _getItemUseCase(params: _currentPage.toString());

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(ItemLoaded(dataState.data!, hasReachedMax: false));
    } else if (dataState is DataFailed) {
      emit(ItemError(dataState.error!));
    } else {
      _hasReachedMax = true;
    }
  }

  Future<void> _onLoadMoreItems(LoadMoreItems event, Emitter<ItemState> emit) async {
    if (_hasReachedMax) return;

    final currentState = state;
    if (currentState is ItemLoaded) {
      final dataState = await _getItemUseCase(params: (++_currentPage).toString());

      if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
        emit(ItemLoaded(
          currentState.items! + dataState.data!,
          hasReachedMax: false,
        ));
      } else {
        _hasReachedMax = true;
      }
    }
  }
}
