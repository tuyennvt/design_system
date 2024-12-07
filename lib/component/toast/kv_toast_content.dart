import 'package:flutter/material.dart';

import '../../foundation/kv_icons.dart';
import '../../kv_design_system.dart';
import '../../utils.dart';

class KvToastContent extends StatelessWidget {
  const KvToastContent._({
    required this.type,
    required this.title,
    this.description,
    this.prefixIcon,
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
      prefixIcon: showPrefixIcon ? KvIcons.bell_regular : null,
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
      prefixIcon: showPrefixIcon ? KvIcons.circle_info_regular : null,
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
      prefixIcon: showPrefixIcon ? KvIcons.circle_check_regular : null,
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
      prefixIcon: showPrefixIcon ? KvIcons.triangle_exclamation_regular : null,
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
      prefixIcon: showPrefixIcon ? KvIcons.circle_exclamation_regular : null,
      onClosed: onClosed,
    );
  }

  final KvToastType type;
  final String title;
  final String? description;
  final IconData? prefixIcon;
  final VoidCallback? onClosed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: background,
        borderRadius: borderRadius,
      ),
      child: Row(
        children: [
          if (prefixIcon != null) ...{
            KvIcon(
              icon: prefixIcon!,
              color: prefixIconColor,
            ),
            SizedBox(width: KvDesignSystem().toastGutter),
          },
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                    style: KvTextStyles.captionRE(color: descriptionColor),
                  ),
                },
              ],
            ),
          ),
          if (onClosed != null) ...{
            SizedBox(width: KvDesignSystem().toastGutter),
            KvMinimumTapArea(
              onTap: onClosed!,
              child: KvIcon(
                icon: KvIcons.xmark_regular,
                color: closedIconColor,
              ),
            ),
          },
        ],
      ),
    );
  }

  Duration get displayDuration => const Duration(seconds: 5);

  EdgeInsets get padding => EdgeInsets.symmetric(
        vertical: KvDesignSystem().toastPaddingVertical,
        horizontal: KvDesignSystem().toastPaddingHorizontal,
      );

  BorderRadius get borderRadius => const BorderRadius.all(Radius.circular(12));

  Color get prefixIconColor {
    switch (type) {
      case KvToastType.system:
        return KvDesignSystem().toastColorIconDefault;
      case KvToastType.information:
        return KvDesignSystem().toastColorIconInfo;
      case KvToastType.success:
        return KvDesignSystem().toastColorIconSuccess;
      case KvToastType.warning:
        return KvDesignSystem().toastColorIconWarning;
      case KvToastType.danger:
        return KvDesignSystem().toastColorIconDanger;
    }
  }

  Color get background {
    switch (type) {
      case KvToastType.system:
        return KvDesignSystem().toastColorBGDefault;
      case KvToastType.information:
        return KvDesignSystem().toastColorBGInfo;
      case KvToastType.success:
        return KvDesignSystem().toastColorBGSuccess;
      case KvToastType.warning:
        return KvDesignSystem().toastColorBGWarning;
      case KvToastType.danger:
        return KvDesignSystem().toastColorBGDanger;
    }
  }

  Color get titleColor {
    switch (type) {
      case KvToastType.system:
        return KvDesignSystem().toastColorTextTitleDefault;
      case KvToastType.information:
        return KvDesignSystem().toastColorTextTitleInfo;
      case KvToastType.success:
        return KvDesignSystem().toastColorTextTitleSuccess;
      case KvToastType.warning:
        return KvDesignSystem().toastColorTextTitleWarning;
      case KvToastType.danger:
        return KvDesignSystem().toastColorTextTitleDanger;
    }
  }

  Color get descriptionColor {
    switch (type) {
      case KvToastType.system:
        return KvDesignSystem().toastColorTextSubDefault;
      case KvToastType.information:
        return KvDesignSystem().toastColorTextSubInfo;
      case KvToastType.success:
        return KvDesignSystem().toastColorTextSubSuccess;
      case KvToastType.warning:
        return KvDesignSystem().toastColorTextSubWarning;
      case KvToastType.danger:
        return KvDesignSystem().toastColorTextSubDanger;
    }
  }

  Color get closedIconColor {
    return KvDesignSystem().iconNeutralSecondaryAction;
  }

  EdgeInsets get margin => const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 24,
      );
}
