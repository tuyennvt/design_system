import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../employee_flutter_design_system.dart';
import '../../generated/assets.dart';
import '../../utils.dart';

class KvCacheNetworkImage extends StatelessWidget {
  const KvCacheNetworkImage({
    super.key,
    required this.imageUrl,
    this.imageSize = KvCacheNetworkImageSize.medium,
    this.imageType = KvCacheNetworkImageType.image,
  });

  final String? imageUrl;
  final KvCacheNetworkImageSize imageSize;
  final KvCacheNetworkImageType imageType;

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isNullOrEmpty) {
      return _ImageDefault(
        imageSize: imageSize,
        imageType: imageType,
      );
    }
    if (imageUrl?.contains('not_found') == true) {
      return _ImageNotFound(
        imageSize: imageSize,
        imageType: imageType,
      );
    }
    return CachedNetworkImage(
      imageUrl: imageUrl!,
      imageBuilder: (context, imageProvider) {
        return _ImageFill(
          imageSize: imageSize,
          imageType: imageType,
          imageProvider: imageProvider,
        );
      },
      placeholder: (context, url) {
        return _ImagePlaceholder(
          imageSize: imageSize,
          imageType: imageType,
        );
      },
      errorWidget: (context, url, error) {
        if (error.toString().contains('404') ||
            error.toString().contains('Not Found')) {
          return _ImageNotFound(
            imageSize: imageSize,
            imageType: imageType,
          );
        }
        return _ImageError(
          imageSize: imageSize,
          imageType: imageType,
        );
      },
      width: imageSize.value,
      height: imageSize.value,
    );
  }
}

class _ImageFill extends StatelessWidget {
  const _ImageFill({
    required this.imageSize,
    required this.imageType,
    required this.imageProvider,
  });

  final KvCacheNetworkImageSize imageSize;
  final KvCacheNetworkImageType imageType;
  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    if (imageType == KvCacheNetworkImageType.avatar) {
      return ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        child: Image(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      );
    }
    return ClipRRect(
      borderRadius: theme.borderRadius ?? BorderRadius.zero,
      child: Image(
        image: imageProvider,
        fit: BoxFit.cover,
      ),
    );
  }

  KvCacheNetworkImageThemeData get theme {
    return KvCacheNetworkImageThemeData(
      imageSize: imageSize,
      imageType: imageType,
    );
  }

  Widget get child {
    return imageType == KvCacheNetworkImageType.avatar
        ? childAvatar
        : childImage;
  }

  Widget get childAvatar {
    double size = 0;
    switch (imageSize) {
      case KvCacheNetworkImageSize.extraSmall:
        size = 11.25;
        break;
      case KvCacheNetworkImageSize.small:
        size = 13.75;
        break;
      case KvCacheNetworkImageSize.medium:
        size = 23.75;
        break;
      case KvCacheNetworkImageSize.large:
        size = 33.75;
        break;
      case KvCacheNetworkImageSize.extraLarge:
        size = 40;
        break;
    }
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(90)),
      child: SvgPicture.asset(
        KvSvgAsset(
          Assets.iconsAvatar,
          assetPackage: packageRoot,
        ).value,
        width: size,
        height: size,
        fit: BoxFit.scaleDown,
      ),
    );
  }

  Widget get childImage {
    double size = 0;
    switch (imageSize) {
      case KvCacheNetworkImageSize.extraSmall:
        size = 15;
        break;
      case KvCacheNetworkImageSize.small:
        size = 15;
        break;
      case KvCacheNetworkImageSize.medium:
        size = 25;
        break;
      case KvCacheNetworkImageSize.large:
        size = 35;
        break;
      case KvCacheNetworkImageSize.extraLarge:
        size = 42.5;
        break;
    }
    return SvgPicture.asset(
      KvSvgAsset(
        Assets.iconsThumbnail,
        assetPackage: packageRoot,
      ).value,
      width: size,
      height: size,
    );
  }
}

class _ImageDefault extends StatelessWidget {
  const _ImageDefault({
    required this.imageSize,
    required this.imageType,
  });

  final KvCacheNetworkImageSize imageSize;
  final KvCacheNetworkImageType imageType;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme.backgroundColorDefault,
        borderRadius: theme.borderRadius,
        shape: theme.shape,
      ),
      width: imageSize.value,
      height: imageSize.value,
      child: child,
    );
  }

  KvCacheNetworkImageThemeData get theme {
    return KvCacheNetworkImageThemeData(
      imageSize: imageSize,
      imageType: imageType,
    );
  }

  Widget get child {
    return imageType == KvCacheNetworkImageType.avatar
        ? childAvatar
        : childImage;
  }

  Widget get childAvatar {
    double size = 0;
    switch (imageSize) {
      case KvCacheNetworkImageSize.extraSmall:
        size = 11.25;
        break;
      case KvCacheNetworkImageSize.small:
        size = 13.75;
        break;
      case KvCacheNetworkImageSize.medium:
        size = 23.75;
        break;
      case KvCacheNetworkImageSize.large:
        size = 33.75;
        break;
      case KvCacheNetworkImageSize.extraLarge:
        size = 40;
        break;
    }
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(90)),
      child: SvgPicture.asset(
        KvSvgAsset(
          Assets.iconsAvatar,
          assetPackage: packageRoot,
        ).value,
        width: size,
        height: size,
        fit: BoxFit.scaleDown,
      ),
    );
  }

  Widget get childImage {
    double size = 0;
    switch (imageSize) {
      case KvCacheNetworkImageSize.extraSmall:
        size = 15;
        break;
      case KvCacheNetworkImageSize.small:
        size = 15;
        break;
      case KvCacheNetworkImageSize.medium:
        size = 25;
        break;
      case KvCacheNetworkImageSize.large:
        size = 35;
        break;
      case KvCacheNetworkImageSize.extraLarge:
        size = 42.5;
        break;
    }
    return SvgPicture.asset(
      KvSvgAsset(
        Assets.iconsThumbnail,
        assetPackage: packageRoot,
      ).value,
      width: size,
      height: size,
    );
  }
}

class _ImageNotFound extends StatelessWidget {
  const _ImageNotFound({
    required this.imageSize,
    required this.imageType,
  });

  final KvCacheNetworkImageSize imageSize;
  final KvCacheNetworkImageType imageType;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme.backgroundColorNotFound,
        borderRadius: theme.borderRadius,
        shape: theme.shape,
      ),
      width: imageSize.value,
      height: imageSize.value,
      child: child,
    );
  }

  KvCacheNetworkImageThemeData get theme {
    return KvCacheNetworkImageThemeData(
      imageSize: imageSize,
      imageType: imageType,
    );
  }

  Widget get child {
    KvIconSize size = KvIconSize.size12;
    switch (imageSize) {
      case KvCacheNetworkImageSize.extraSmall:
      case KvCacheNetworkImageSize.small:
        size = KvIconSize.size12;
        break;
      case KvCacheNetworkImageSize.medium:
        size = KvIconSize.size16;
        break;
      case KvCacheNetworkImageSize.large:
        size = KvIconSize.size24;
        break;
      case KvCacheNetworkImageSize.extraLarge:
        size = KvIconSize.size32;
        break;
    }
    return KvIcon(
      assetIcon: KvSvgAsset(
        Assets.iconsImageSlash,
        assetPackage: packageRoot,
      ),
      color: theme.iconColorNotFound,
      size: size,
    );
  }
}

class _ImageError extends StatelessWidget {
  const _ImageError({
    required this.imageSize,
    required this.imageType,
  });

  final KvCacheNetworkImageSize imageSize;
  final KvCacheNetworkImageType imageType;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme.backgroundColorError,
        borderRadius: theme.borderRadius,
        shape: theme.shape,
      ),
      width: imageSize.value,
      height: imageSize.value,
      child: child,
    );
  }

  KvCacheNetworkImageThemeData get theme {
    return KvCacheNetworkImageThemeData(
      imageSize: imageSize,
      imageType: imageType,
    );
  }

  Widget get child {
    KvIconSize size = KvIconSize.size12;
    switch (imageSize) {
      case KvCacheNetworkImageSize.extraSmall:
      case KvCacheNetworkImageSize.small:
        size = KvIconSize.size12;
        break;
      case KvCacheNetworkImageSize.medium:
        size = KvIconSize.size16;
        break;
      case KvCacheNetworkImageSize.large:
        size = KvIconSize.size24;
        break;
      case KvCacheNetworkImageSize.extraLarge:
        size = KvIconSize.size32;
        break;
    }
    return KvIcon(
      assetIcon: KvSvgAsset(
        Assets.iconsFileCircleExclamation,
        assetPackage: packageRoot,
      ),
      color: theme.iconColorError,
      size: size,
    );
  }
}

class _ImagePlaceholder extends StatelessWidget {
  const _ImagePlaceholder({
    required this.imageSize,
    required this.imageType,
  });

  final KvCacheNetworkImageSize imageSize;
  final KvCacheNetworkImageType imageType;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: theme.backgroundColorError,
          borderRadius: theme.borderRadius,
          shape: theme.shape,
        ),
        width: imageSize.value,
        height: imageSize.value,
      ),
    );
  }

  KvCacheNetworkImageThemeData get theme {
    return KvCacheNetworkImageThemeData(
      imageSize: imageSize,
      imageType: imageType,
    );
  }

  Widget get child {
    KvIconSize size = KvIconSize.size12;
    switch (imageSize) {
      case KvCacheNetworkImageSize.extraSmall:
      case KvCacheNetworkImageSize.small:
        size = KvIconSize.size12;
        break;
      case KvCacheNetworkImageSize.medium:
        size = KvIconSize.size16;
        break;
      case KvCacheNetworkImageSize.large:
        size = KvIconSize.size24;
        break;
      case KvCacheNetworkImageSize.extraLarge:
        size = KvIconSize.size32;
        break;
    }
    return KvIcon(
      assetIcon: KvSvgAsset(
        Assets.iconsFileCircleExclamation,
        assetPackage: packageRoot,
      ),
      color: theme.iconColorError,
      size: size,
    );
  }
}

enum ShimmerDirection { ltr, rtl, ttb, btt }

@immutable
class Shimmer extends StatefulWidget {
  const Shimmer({
    super.key,
    required this.child,
    required this.gradient,
    this.direction = ShimmerDirection.ltr,
    this.period = const Duration(milliseconds: 1500),
    this.loop = 0,
    this.enabled = true,
  });

  Shimmer.fromColors({
    super.key,
    required this.child,
    required Color baseColor,
    required Color highlightColor,
    this.period = const Duration(milliseconds: 1500),
    this.direction = ShimmerDirection.ltr,
    this.loop = 0,
    this.enabled = true,
  }) : gradient = LinearGradient(
          begin: Alignment.topLeft,
          colors: <Color>[
            baseColor,
            baseColor,
            highlightColor,
            baseColor,
            baseColor,
          ],
          stops: const <double>[
            0.0,
            0.35,
            0.5,
            0.65,
            1.0,
          ],
        );
  final Widget child;
  final Duration period;
  final ShimmerDirection direction;
  final Gradient gradient;
  final int loop;
  final bool enabled;

  @override
  State<Shimmer> createState() => _ShimmerState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Gradient>('gradient', gradient,
        defaultValue: null,),);
    properties.add(EnumProperty<ShimmerDirection>('direction', direction));
    properties.add(
        DiagnosticsProperty<Duration>('period', period, defaultValue: null),);
    properties
        .add(DiagnosticsProperty<bool>('enabled', enabled, defaultValue: null));
    properties.add(DiagnosticsProperty<int>('loop', loop, defaultValue: 0));
  }
}

class _ShimmerState extends State<Shimmer> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int _count = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.period,
      vsync: this,
    )..addStatusListener((AnimationStatus status) {
        if (status != AnimationStatus.completed) {
          return;
        }
        _count++;
        if (widget.loop <= 0) {
          _controller.repeat();
        } else if (_count < widget.loop) {
          _controller.forward(from: 0.0);
        }
      });
    if (widget.enabled) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(Shimmer oldWidget) {
    if (widget.enabled) {
      _controller.forward();
    } else {
      _controller.stop();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) => _Shimmer(
        percent: _controller.value,
        direction: widget.direction,
        gradient: widget.gradient,
        child: child,
      ),
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

@immutable
class _Shimmer extends SingleChildRenderObjectWidget {
  const _Shimmer({
    Widget? child,
    required this.percent,
    required this.direction,
    required this.gradient,
  }) : super(child: child);
  final double percent;
  final ShimmerDirection direction;
  final Gradient gradient;

  @override
  _ShimmerFilter createRenderObject(BuildContext context) {
    return _ShimmerFilter(percent, direction, gradient);
  }

  @override
  void updateRenderObject(BuildContext context, _ShimmerFilter shimmer) {
    shimmer.percent = percent;
    shimmer.gradient = gradient;
    shimmer.direction = direction;
  }
}

class _ShimmerFilter extends RenderProxyBox {
  _ShimmerFilter(this._percent, this._direction, this._gradient);

  ShimmerDirection _direction;
  Gradient _gradient;
  double _percent;

  @override
  ShaderMaskLayer? get layer => super.layer as ShaderMaskLayer?;

  @override
  bool get alwaysNeedsCompositing => child != null;

  set percent(double newValue) {
    if (newValue == _percent) {
      return;
    }
    _percent = newValue;
    markNeedsPaint();
  }

  set gradient(Gradient newValue) {
    if (newValue == _gradient) {
      return;
    }
    _gradient = newValue;
    markNeedsPaint();
  }

  set direction(ShimmerDirection newDirection) {
    if (newDirection == _direction) {
      return;
    }
    _direction = newDirection;
    markNeedsLayout();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child != null) {
      assert(needsCompositing);

      final double width = child!.size.width;
      final double height = child!.size.height;
      Rect rect;
      double dx, dy;
      if (_direction == ShimmerDirection.rtl) {
        dx = _offset(width, -width, _percent);
        dy = 0.0;
        rect = Rect.fromLTWH(dx - width, dy, 3 * width, height);
      } else if (_direction == ShimmerDirection.ttb) {
        dx = 0.0;
        dy = _offset(-height, height, _percent);
        rect = Rect.fromLTWH(dx, dy - height, width, 3 * height);
      } else if (_direction == ShimmerDirection.btt) {
        dx = 0.0;
        dy = _offset(height, -height, _percent);
        rect = Rect.fromLTWH(dx, dy - height, width, 3 * height);
      } else {
        dx = _offset(-width, width, _percent);
        dy = 0.0;
        rect = Rect.fromLTWH(dx - width, dy, 3 * width, height);
      }
      layer ??= ShaderMaskLayer();
      layer!
        ..shader = _gradient.createShader(rect)
        ..maskRect = offset & size
        ..blendMode = BlendMode.srcIn;
      context.pushLayer(layer!, super.paint, offset);
    } else {
      layer = null;
    }
  }

  double _offset(double start, double end, double percent) {
    return start + (end - start) * percent;
  }
}
