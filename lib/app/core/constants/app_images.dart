enum AppImages {
  notFound,
}

extension AppImagesExtension on AppImages {
  // Return the icon path from the iconString enum
  // Format iconString to "assets/images/img_not_found.png"
  String get assetPath {
    return 'assets/images/img_${name.toString().replaceAllMapped(RegExp(r'[A-Z]'), (match) => '_${match.group(0)}').toLowerCase()}.png';
  }
}
