

class APIPathHelper {
  // global api base url
  static const String baseUrl = "https://api.github.com/";

  static String searchResultList({String? page}) {
    return "search/repositories?q=flutter&page=$page&per_page=10&sort=star&order=desc";
  }

  static String itemDetails({String? param}) {
        return "/item/details/$param";
  }

}
