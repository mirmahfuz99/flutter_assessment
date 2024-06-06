

class APIPathHelper {
  // global api base url
  static const String baseUrl = "";

  static String itemList({String? param}) {
        return "/item/list/param";
  }

  static String itemDetails({String? param}) {
        return "/item/details/$param";
  }

}
