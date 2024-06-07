import 'package:flutter/material.dart';
import 'package:flutter_assessment/core/widgets/custom_app_bar.dart';
import 'package:flutter_assessment/core/widgets/custom_image.dart';
import 'package:flutter_assessment/features/home/data/models/search_result_item.dart';
import 'package:flutter_assessment/utils/dimensions.dart';
import 'package:flutter_assessment/utils/styles.dart';

class ItemDetailsPage extends StatelessWidget {
  final SearchResultItem item;
  const ItemDetailsPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: item.name,
        titleColor: Theme.of(context).textTheme.bodySmall!.color,
        bgColor: Theme.of(context).cardColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImage(
                  image: item.owner!.avatarUrl!,
                  height: 100,
                ),
                Text(item.owner!.type!,style: robotoMedium.copyWith(
                  fontSize: Dimensions.fontSizeExtraLarge,
                ),),
              ],
            ),
            const SizedBox(height: Dimensions.paddingSizeDefault,),
            Text(item.description!,style: robotoMedium,),
          ],
        ),
      ),
    );
  }
}
