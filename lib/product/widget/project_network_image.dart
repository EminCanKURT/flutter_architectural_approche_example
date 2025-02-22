import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

/// Network image with LottieLoading
final class ProjectNetworkImage extends StatelessWidget {
  /// Oluşturucusudur
  const ProjectNetworkImage({
    required this.url,
    this.size,
    super.key,
  });

  /// Url
  final String? url;

  /// Size
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      imageUrl: url,
      loadingWidget: Assets.lottie.animZombie.lottie(
        package: 'gen',
      ),
      size: size,
    );
  }
}
