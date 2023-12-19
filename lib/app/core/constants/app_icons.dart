enum AppIcons { home, tool }

extension AppIconsExtension on AppIcons {
  // Return the icon path from the iconString enum
  // Format iconString to "assets/icons/ic_icon_string.svg"
  String get assetPath {
    return 'assets/icons/ic_${name.toString().replaceAllMapped(RegExp(r'[A-Z]'), (match) => '_${match.group(0)}').toLowerCase()}.svg';
  }
}
