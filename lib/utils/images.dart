class Images {
  static const String placeholder = 'assets/images/placeholder.png';

  static String get logo => 'logo'.png;

}

extension on String {
  String get png => 'assets/images/$this.png';
}
