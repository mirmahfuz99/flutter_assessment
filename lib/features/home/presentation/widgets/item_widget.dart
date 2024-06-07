import 'package:flutter/material.dart';
import 'package:flutter_assessment/core/widgets/custom_image.dart';
import 'package:flutter_assessment/features/home/data/models/search_result_item.dart';
import 'package:flutter_assessment/utils/dimensions.dart';
import 'package:flutter_assessment/utils/styles.dart';

class ItemWidget extends StatelessWidget {
  final SearchResultItem? item;
  final void Function(SearchResultItem item) ? onItemPressed;

  const ItemWidget({
    super.key,
    this.item,
    this.onItemPressed,
  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _onTap,
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImage(
              height: 100.0,
              image: item!.owner!.avatarUrl!,
            ),
            const SizedBox(width: Dimensions.paddingSizeExtraLarge,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name: ${item!.name!}",style: robotoMedium.copyWith(
                    fontSize: Dimensions.fontSizeLarge,
                  ),),
                  Text("Number Of Star: ${item!.stargazersCount!.toString()}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTap() {
    if (onItemPressed != null) {
      onItemPressed!(item!);
    }
  }
}
