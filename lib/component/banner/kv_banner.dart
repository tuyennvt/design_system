import 'package:flutter/material.dart';

import '../../kv_design_system.dart';
import '../../foundation/kv_icons.dart';
import '../../kv_design_system.dart';

class KvBanner extends StatelessWidget {
  const KvBanner({
    super.key,
    this.bannerType = KvBannerType.defaultBanner,
    this.showAnnouncementIcon = true,
    this.actionButton,
    this.actionIcon,
    this.onActionIconPressed,
    required this.content,
    this.maxLine = 1,
  });

  final KvBannerType bannerType;
  final bool showAnnouncementIcon;
  final KvInlineButton? actionButton;
  final IconData? actionIcon;
  final VoidCallback? onActionIconPressed;
  final String content;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: theme.padding,
      decoration: BoxDecoration(color: theme.backgroundColor),
      child: Row(
        children: [
          if (showAnnouncementIcon) ...{
            _AnnouncementIcon(
              bannerType: bannerType,
              theme: theme,
            ),
            SizedBox(width: KvDesignSystem().bannerGutter),
          },
          Expanded(
            child: Text(
              content,
              style: theme.contentTextStyle,
              overflow: (maxLine != null && maxLine! > 0)
                  ? TextOverflow.ellipsis
                  : null,
              maxLines: maxLine,
            ),
          ),
          if (actionButton != null) ...{
            SizedBox(width: KvDesignSystem().bannerGutter),
            actionButton!,
          },
          if (actionIcon != null) ...{
            SizedBox(width: KvDesignSystem().bannerGutter),
            _ActionIcon(
              icon: actionIcon!,
              theme: theme,
              onPressed: onActionIconPressed,
            ),
          }
        ],
      ),
    );
  }

  KvBannerThemeData get theme => KvBannerThemeData(bannerType);
}

class _AnnouncementIcon extends StatelessWidget {
  const _AnnouncementIcon({
    required this.bannerType,
    required this.theme,
  });

  final KvBannerType bannerType;
  final KvBannerThemeData theme;

  @override
  Widget build(BuildContext context) {
    return KvIcon(
      icon: KvIcons.bell_regular,
      color: theme.announcementIconColor,
      size: KvIconSize.iconXS,
    );
  }
}

class _ActionIcon extends StatelessWidget {
  const _ActionIcon({
    required this.icon,
    required this.theme,
    this.onPressed,
  });

  final IconData icon;
  final KvBannerThemeData theme;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return KvMinimumTapArea(
      onTap: () => onPressed?.call(),
      child: KvIcon(
        icon: icon,
        color: theme.actionIconColor,
        size: KvIconSize.iconXS,
      ),
    );
  }
}
