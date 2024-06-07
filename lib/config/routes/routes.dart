import 'package:flutter/material.dart';
import 'package:flutter_assessment/config/routes/route_name.dart';
import 'package:flutter_assessment/features/home/data/models/search_result_item.dart';
import 'package:flutter_assessment/features/home/presentation/pages/home_page.dart';
import 'package:flutter_assessment/features/item_details/presentation/pages/item_details_page.dart';


// Navigator.pushNamed(context, '/ItemDetails', arguments: item);
class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homePage:
        return _materialRoute(const HomePage());

      case RouteName.itemDetails:
        return _materialRoute(ItemDetailsPage(item: settings.arguments as SearchResultItem));


      default:
        return _materialRoute(const HomePage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
