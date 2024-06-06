import 'package:flutter_assessment/core/resources/data_state.dart';
import 'package:flutter_assessment/features/home/domain/usecases/get_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_assessment/features/home/presentation/bloc/item_event.dart';
import 'package:flutter_assessment/features/home/presentation/bloc/remote_item_state.dart';

class ItemBloc extends Bloc<ItemEvent,ItemState> {

  final GetItemUseCase _getItemUseCase;

  ItemBloc(this._getItemUseCase) : super(const ItemLoading()){
    on <GetItems> (onGetItems);
  }


  void onGetItems(GetItems event, Emitter < ItemState > emit) async {
    final dataState = await _getItemUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(
          ItemLoaded(dataState.data!)
      );
    }

    if (dataState is DataFailed) {
      emit(ItemError(dataState.error!));
    }
  }

}