import 'package:flutter/material.dart';
import 'package:flutter_assessment/features/home/data/models/item.dart';

class ItemWidget extends StatelessWidget {
  final Item? item;
  final void Function(Item item) ? onItemPressed;

  const ItemWidget({
    super.key,
    this.item,
    this.onItemPressed,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
