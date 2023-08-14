enum Flavor {
  prod,
  staging,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'AT Care';
      case Flavor.staging:
        return 'AT Care Staging';
      default:
        return 'title';
    }
  }
}
