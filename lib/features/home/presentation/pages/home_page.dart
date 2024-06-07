import 'package:flutter/material.dart';
import 'package:flutter_assessment/config/routes/route_name.dart';
import 'package:flutter_assessment/core/widgets/custom_app_bar.dart';
import 'package:flutter_assessment/features/home/data/models/search_result_item.dart';
import 'package:flutter_assessment/features/home/presentation/bloc/item_bloc.dart';
import 'package:flutter_assessment/features/home/presentation/bloc/item_event.dart';
import 'package:flutter_assessment/features/home/presentation/bloc/remote_item_state.dart';
import 'package:flutter_assessment/features/home/presentation/widgets/item_widget.dart';
import 'package:flutter_assessment/utils/app_constants.dart';
import 'package:flutter_assessment/utils/dimensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppConstants.applicationName,
        bgColor: Theme.of(context).cardColor,
        isBackButtonExist: false,
      ),
      body: _buildBody(),
    );
  }

  _buildBody(){
    return BlocBuilder<ItemBloc, ItemState>(
        builder: (context, state){
          if(state is ItemLoading){
            return const Center(child: CircularProgressIndicator(),);
          }
          if(state is ItemError){
            return const Center(child: Text(AppConstants.dataFacingError));
          }
          if(state is ItemLoaded){
            return NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollEndNotification &&
                    scrollNotification.metrics.extentAfter == 0) {
                  BlocProvider.of<ItemBloc>(context).add(LoadMoreItems());
                }
                return false;
              },
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
                child: ListView.builder(
                  itemCount: state.hasReachedMax ? state.items!.length : state.items!.length + 1,
                  itemBuilder: (context, index) {
                    if (index >= state.items!.length) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      return ItemWidget(
                        item: state.items![index],
                        onItemPressed: (item) => _onItemPressed(context, item),
                      );
                    }
                  },
                ),
              ),
            );
          }
          return const SizedBox();
        },
    );
  }

  void _onItemPressed(BuildContext context, SearchResultItem item) {
    Navigator.pushNamed(context, RouteName.itemDetails, arguments: item);
  }
}
