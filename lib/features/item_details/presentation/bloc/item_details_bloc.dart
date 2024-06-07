import 'package:flutter_assessment/core/resources/data_state.dart';
import 'package:flutter_assessment/features/item_details/domain/usecases/get_item_details.dart';
import 'package:flutter_assessment/features/item_details/presentation/bloc/item_details_event.dart';
import 'package:flutter_assessment/features/item_details/presentation/bloc/item_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemDetailsBloc extends Bloc<ItemDetailsEvent,ItemDetailsState> {

  final GetItemDetailsUseCase _getItemDetailsUseCase;

  ItemDetailsBloc(this._getItemDetailsUseCase) : super(const ItemDetailsLoading()){
    on <GetItemDetails> (onGetItemDetails);
  }


  void onGetItemDetails(GetItemDetails event, Emitter < ItemDetailsState > emit) async {
    final dataState = await _getItemDetailsUseCase();

    if (dataState is DataSuccess && dataState.data != null) {
      emit(
          ItemDetailsLoaded(dataState.data!)
      );
    }

    if (dataState is DataFailed) {
      emit(ItemDetailsError(dataState.error!));
    }
  }

}