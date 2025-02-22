import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/src/package/custom_image/custom_mem_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// CustomNetworkImage
class CustomNetworkImage extends StatelessWidget {
  /// CustomNetworkImage constructor
  const CustomNetworkImage({
    this.imageUrl,
    this.loadingWidget,
    this.errorWidget,
    this.emptyWidget,
    this.memCache = const CustomMemCache(
      memCacheWidth: 200,
      memCacheHeight: 200,
    ),
    this.boxFit = BoxFit.cover,
    this.size,
    super.key,
  });

  /// imageUrl
  final String? imageUrl;

  /// loadingWidget
  final Widget? loadingWidget;

  /// errorWidget
  final Widget? errorWidget;

  /// emptyWidget
  final Widget? emptyWidget;

  /// memCache default [CustomMemCache(memCacheWidth: 200, memCacheHeight: 200)]
  final CustomMemCache memCache;

  /// Box fit
  final BoxFit boxFit;

  /// Size
  final Size? size;

  @override
  Widget build(BuildContext context) {
    final imageUrl = this.imageUrl;
    if (imageUrl == null || imageUrl.isEmpty) {
      return emptyWidget ?? const SizedBox.shrink();
    }
    return CachedNetworkImage(
      imageUrl: imageUrl,
      memCacheWidth: memCache.memCacheWidth,
      memCacheHeight: memCache.memCacheHeight,
      fit: boxFit,
      width: size?.width,
      height: size?.height,
      errorListener: (error) {
        if (kDebugMode) {
          debugPrint(error.toString());
        }
      },
      placeholder: (context, url) => Center(
        child: loadingWidget ?? const CircularProgressIndicator(),
      ),
      errorWidget: (context, url, error) =>
          errorWidget ??
          const Icon(
            Icons.error,
          ),
    );
  }
}
