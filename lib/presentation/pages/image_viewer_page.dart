import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ImageViewerPage extends StatelessWidget {
  const ImageViewerPage({
    this.imageUrl,
    this.imageProvider,
    super.key,
  }) : assert(
          imageUrl != null || imageProvider != null,
          'Either imageUrl or imageProvider must be provided',
        );

  final String? imageUrl;
  final ImageProvider<Object>? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned.fill(
            child: ExtendedImageSlidePage(
              child: ExtendedImageSlidePageHandler(
                child: ExtendedImage(
                  image: imageProvider ?? CachedNetworkImageProvider(imageUrl!),
                  enableSlideOutPage: true,
                  mode: ExtendedImageMode.gesture,
                  initGestureConfigHandler: (state) {
                    return GestureConfig(
                      minScale: 1,
                    );
                  },
                ),
                heroBuilderForSlidingPage: (widget) {
                  return Hero(
                    tag: imageUrl ?? Object(),
                    child: widget,
                    flightShuttleBuilder: (
                      flightContext,
                      animation,
                      flightDirection,
                      fromHeroContext,
                      toHeroContext,
                    ) {
                      final hero = (flightDirection == HeroFlightDirection.pop
                          ? fromHeroContext.widget
                          : toHeroContext.widget) as Hero;

                      return hero.child;
                    },
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: AppBar(
              backgroundColor: Colors.transparent,
              forceMaterialTransparency: true,
            ),
          ),
        ],
      ),
    );
  }
}
