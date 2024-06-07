import 'package:flutter/material.dart';
import 'package:flutter_assessment/config/routes/route_name.dart';
import 'package:flutter_assessment/features/home/data/models/item.dart';
import 'package:flutter_assessment/features/home/presentation/bloc/item_bloc.dart';
import 'package:flutter_assessment/features/home/presentation/bloc/remote_item_state.dart';
import 'package:flutter_assessment/features/home/presentation/widgets/item_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final themeBloc = BlocProvider.of<ThemeBloc>(context);

    return Scaffold(
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
            return const Center(child: Text("Data facing error"));
          }
          if(state is ItemLoaded){
            return ListView.builder(
              itemBuilder: (context,index){
                return ItemWidget(
                  item: state.items![index] ,
                  onItemPressed: (item) => _onItemPressed(context,item),
                );
              },
              itemCount: state.items!.length,
            );
          }
          return const SizedBox();
        },
    );
  }

  void _onItemPressed(BuildContext context, Item item) {
    Navigator.pushNamed(context, RouteName.itemDetails, arguments: item);
  }
}
