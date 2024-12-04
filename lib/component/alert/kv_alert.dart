import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';
import '../../foundation/kv_icons.dart';
import '../../kv_design_system.dart';
import '../../utils.dart';

class KvAlert extends StatelessWidget {
  const KvAlert({
    super.key,
    this.alertStyle = KvAlertStyle.defaultAlert,
    this.prefixIcon,
    this.title,
    this.content,
    this.actionLabel,
    this.onActionPressed,
  });

  final KvAlertStyle alertStyle;
  final IconData? prefixIcon;
  final String? title;
  final String? content;
  final String? actionLabel;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (content.isNullOrEmpty) {
      child = Row(
        children: [
          if (prefixIcon != null) ...{
            KvIcon(
              icon: prefixIcon!,
              color: theme.prefixIconColor,
              size: KvIconSize.iconXS,
            ),
            SizedBox(width: theme.gutter),
          },
          Expanded(child: titleWidget),
          if (actionLabel.isNotNullOrEmpty) ...{
            SizedBox(width: theme.gutter),
            KvInlineButton(
              text: actionLabel!,
              onPressed: onActionPressed,
            ),
            SizedBox(
              width: KvDesignSystem().gutterItemHorizontal,
            ),
            KvIcon(
              icon: KvIcons.angle_right_regular,
              color: KvDesignSystem().iconNeutralSecondaryAction,
              size: KvIconSize.iconXS,
            ),
          },
        ],
      );
    } else {
      child = Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              if (prefixIcon != null) ...{
                KvIcon(
                  icon: prefixIcon!,
                  color: theme.prefixIconColor,
                  size: KvIconSize.iconXS,
                ),
                SizedBox(width: theme.gutter),
              },
              Expanded(child: titleWidget),
            ],
          ),
          SizedBox(height: theme.gutter),
          contentWidget,
          if (actionLabel.isNotNullOrEmpty) ...{
            SizedBox(height: theme.gutter),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                KvInlineButton(
                  text: actionLabel!,
                  onPressed: onActionPressed,
                ),
                SizedBox(
                  width: KvDesignSystem().gutterItemHorizontal.toDouble(),
                ),
                KvIcon(
                  icon: KvIcons.angle_right_regular,
                  color: KvDesignSystem().iconNeutralSecondaryAction,
                  size: KvIconSize.iconXS,
                ),
              ],
            ),
          },
        ],
      );
    }
    return Container(
      padding: theme.padding,
      decoration: theme.decoration,
      child: child,
    );
  }

  KvAlertThemeData get theme => KvAlertThemeData(alertStyle);

  Widget get titleWidget {
    if (title.isNullOrEmpty) {
      return const SizedBox();
    }
    return Text(
      title!,
      style: theme.titleTextStyle,
    );
  }

  Widget get contentWidget {
    if (content.isNullOrEmpty) {
      return const SizedBox();
    }
    return Text(
      content!,
      style: theme.contentTextStyle,
    );
  }
}
