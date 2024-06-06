import 'package:flutter/material.dart';
import 'package:flutter_assessment/features/home/data/models/item.dart';

class ItemDetailsPage extends StatelessWidget {
  final Item item;
  const ItemDetailsPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
