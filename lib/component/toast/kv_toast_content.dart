import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';
import '../../generated/assets.dart';
import '../../utils.dart';
import '../button/close_button/kv_close_button.dart';

class KvToastContent extends StatelessWidget {
  const KvToastContent._({
    required this.type,
    required this.title,
    this.description,
    this.assetPrefixIcon,
    this.onClosed,
  });

  factory KvToastContent.system({
    required String title,
    String? description,
    bool showPrefixIcon = true,
    VoidCallback? onClosed,
  }) {
    return KvToastContent._(
      type: KvToastType.system,
      title: title,
      description: description,
      assetPrefixIcon: showPrefixIcon
          ? KvSvgAsset(
              Assets.iconsBell,
              assetPackage: packageRoot,
            )
          : null,
      onClosed: onClosed,
    );
  }

  factory KvToastContent.information({
    required String title,
    String? description,
    bool showPrefixIcon = true,
    VoidCallback? onClosed,
  }) {
    return KvToastContent._(
      type: KvToastType.information,
      title: title,
      description: description,
      assetPrefixIcon: showPrefixIcon
          ? KvSvgAsset(
              Assets.iconsCircleInfo,
              assetPackage: packageRoot,
            )
          : null,
      onClosed: onClosed,
    );
  }

  factory KvToastContent.success({
    required String title,
    String? description,
    bool showPrefixIcon = true,
    VoidCallback? onClosed,
  }) {
    return KvToastContent._(
      type: KvToastType.success,
      title: title,
      description: description,
      assetPrefixIcon: showPrefixIcon
          ? KvSvgAsset(
              Assets.iconsCircleCheck,
              assetPackage: packageRoot,
            )
          : null,
      onClosed: onClosed,
    );
  }

  factory KvToastContent.warning({
    required String title,
    String? description,
    bool showPrefixIcon = true,
    VoidCallback? onClosed,
  }) {
    return KvToastContent._(
      type: KvToastType.warning,
      title: title,
      description: description,
      assetPrefixIcon: showPrefixIcon
          ? KvSvgAsset(
              Assets.iconsCircleExclamationRegular,
              assetPackage: packageRoot,
            )
          : null,
      onClosed: onClosed,
    );
  }

  factory KvToastContent.danger({
    required String title,
    String? description,
    bool showPrefixIcon = true,
    VoidCallback? onClosed,
  }) {
    return KvToastContent._(
      type: KvToastType.danger,
      title: title,
      description: description,
      assetPrefixIcon: showPrefixIcon
          ? KvSvgAsset(
              Assets.iconsCircleExclamationSolid,
              assetPackage: packageRoot,
            )
          : null,
      onClosed: onClosed,
    );
  }

  final KvToastType type;
  final String title;
  final String? description;
  final KvSvgAsset? assetPrefixIcon;
  final VoidCallback? onClosed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        borderRadius: borderRadius,
      ),
      child: Row(
        children: [
          const SizedBox(
            width: DTokens.sizeSize20,
          ),
          if (assetPrefixIcon.isNotNullOrEmpty) ...{
            KvIcon(
              assetIcon: assetPrefixIcon!,
              color: prefixIconColor,
            ),
            const SizedBox(width: DTokens.sizeSize12),
          },
          Expanded(
            child: Padding(
              padding: contentPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    title,
                    style: KvTextStyles.titleM(color: titleColor),
                  ),
                  if (description.isNotNullOrEmpty) ...{
                    const SizedBox(height: 4.0),
                    Text(
                      description!,
                      style: KvTextStyles.cationRe(color: descriptionColor),
                    ),
                  },
                ],
              ),
            ),
          ),
          if (onClosed != null) ...{
            const SizedBox(width: DTokens.sizeSize12),
            KvCloseButton(
              onPressed: onClosed,
              color: closedIconColor,
            ),
          },
          const SizedBox(
            width: DTokens.sizeSize20,
          ),
        ],
      ),
    );
  }

  Duration get displayDuration => const Duration(seconds: 5);

  EdgeInsets get margin => const EdgeInsets.only(
        left: DTokens.sizeSize20,
        right: DTokens.sizeSize20,
        bottom: DTokens.sizeSize24,
      );

  EdgeInsets get contentPadding => const EdgeInsets.only(
        top: DTokens.sizeSize12,
        bottom: DTokens.sizeSize12,
      );

  BorderRadius get borderRadius => const BorderRadius.all(
        Radius.circular(DTokens.sizeSize12),
      );

  Color get prefixIconColor {
    switch (type) {
      case KvToastType.system:
        return DTokens
            .componentTokensToastColorIconDefault;
      case KvToastType.information:
        return DTokens.componentTokensToastColorIconInfo;
      case KvToastType.success:
        return DTokens
            .componentTokensToastColorIconSuccess;
      case KvToastType.warning:
        return DTokens
            .componentTokensToastColorIconWarning;
      case KvToastType.danger:
        return DTokens
            .componentTokensToastColorIconDanger;
    }
  }

  Color get background {
    switch (type) {
      case KvToastType.system:
        return DTokens.componentTokensToastColorBgDefault;
      case KvToastType.information:
        return DTokens
            .componentTokensToastColorBgInformation;
      case KvToastType.success:
        return DTokens.componentTokensToastColorBgSuccess;
      case KvToastType.warning:
        return DTokens.componentTokensToastColorBgWarning;
      case KvToastType.danger:
        return DTokens.componentTokensToastColorBgDanger;
    }
  }

  Color get titleColor {
    switch (type) {
      case KvToastType.system:
        return DTokens
            .componentTokensToastColorTextTitleDefault;
      case KvToastType.information:
        return DTokens
            .componentTokensToastColorTextTitlePrimary;
      case KvToastType.success:
        return DTokens
            .componentTokensToastColorTextTitleSuccess;
      case KvToastType.warning:
        return DTokens
            .componentTokensToastColorTextTitleWarning;
      case KvToastType.danger:
        return DTokens
            .componentTokensToastColorTextTitleDanger;
    }
  }

  Color get descriptionColor {
    switch (type) {
      case KvToastType.system:
        return DTokens
            .componentTokensToastColorTextSubDefault;
      case KvToastType.information:
        return DTokens
            .componentTokensToastColorTextSubInfo;
      case KvToastType.success:
        return DTokens
            .componentTokensToastColorTextSubSuccess;
      case KvToastType.warning:
        return DTokens
            .componentTokensToastColorTextSubWarning;
      case KvToastType.danger:
        return DTokens
            .componentTokensToastColorTextSubDanger;
    }
  }

  Color get closedIconColor {
    switch (type) {
      case KvToastType.system:
        return DTokens.colorIconNeutralOnsolidPrimaryAction;
      case KvToastType.information:
        return DTokens.colorIconInfoSecondaryAction;
      case KvToastType.success:
        return DTokens.colorIconSuccessSecondaryAction;
      case KvToastType.warning:
        return DTokens.colorIconWarningSecondaryAction;
      case KvToastType.danger:
        return DTokens.colorIconDangerSecondaryAction;
    }
  }
}
