import 'package:flutter/material.dart';
import 'package:flutter_assessment/features/home/data/models/search_result_item.dart';
import 'package:flutter_assessment/features/item_details/presentation/bloc/item_details_bloc.dart';
import 'package:flutter_assessment/features/item_details/presentation/bloc/item_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemDetailsPage extends StatelessWidget {
  final SearchResultItem item;
  const ItemDetailsPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemDetailsBloc, ItemDetailsState>(
      builder: (context, state){

        if(state is ItemDetailsLoading){
          return const Center(child: CircularProgressIndicator(),);
        }
        if(state is ItemDetailsError){
          return const Center(child: Text("Data facing error"));
        }
        if(state is ItemDetailsLoaded){
          return Text(state.itemDetails!.name!);
        }
        return const SizedBox();
      },
    );
  }
}
