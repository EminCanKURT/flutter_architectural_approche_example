import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Make a adaptive view for all platforms
final class AdaptAllView extends StatelessWidget {
  /// Define your custom widget for every platform
  /// mobile, tablet, desktop
  const AdaptAllView({
    required this.phone,
    required this.tablet,
    required this.desktop,
    super.key,
  });

  /// Mobile Widget
  final Widget phone;

  /// Tablet Widget
  final Widget tablet;

  /// Desktop Widget
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile) return phone;
    if (ResponsiveBreakpoints.of(context).isTablet) return tablet;
    if (ResponsiveBreakpoints.of(context).isDesktop) return desktop;

    return desktop;
  }
}
