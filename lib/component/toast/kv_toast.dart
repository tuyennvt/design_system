import 'package:flutter/material.dart';

import 'kv_toast_content.dart';

enum KvToastType {
  system,
  information,
  success,
  warning,
  danger,
}

class KvToast {
  const KvToast._({
    required this.context,
    required this.toastContent,
  });

  factory KvToast.system(
    BuildContext context, {
    required String title,
    String? description,
    bool showPrefixIcon = true,
    VoidCallback? onClosed,
  }) {
    return KvToast._(
      context: context,
      toastContent: KvToastContent.system(
        title: title,
        description: description,
        showPrefixIcon: showPrefixIcon,
        onClosed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          onClosed?.call();
        },
      ),
    );
  }

  factory KvToast.information(
    BuildContext context, {
    required String title,
    String? description,
    bool showPrefixIcon = true,
    VoidCallback? onClosed,
  }) {
    return KvToast._(
      context: context,
      toastContent: KvToastContent.information(
        title: title,
        description: description,
        showPrefixIcon: showPrefixIcon,
        onClosed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          onClosed?.call();
        },
      ),
    );
  }

  factory KvToast.success(
    BuildContext context, {
    required String title,
    String? description,
    bool showPrefixIcon = true,
    VoidCallback? onClosed,
  }) {
    return KvToast._(
      context: context,
      toastContent: KvToastContent.success(
        title: title,
        description: description,
        showPrefixIcon: showPrefixIcon,
        onClosed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          onClosed?.call();
        },
      ),
    );
  }

  factory KvToast.warning(
    BuildContext context, {
    required String title,
    String? description,
    bool showPrefixIcon = true,
    VoidCallback? onClosed,
  }) {
    return KvToast._(
      context: context,
      toastContent: KvToastContent.warning(
        title: title,
        description: description,
        showPrefixIcon: showPrefixIcon,
        onClosed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          onClosed?.call();
        },
      ),
    );
  }

  factory KvToast.danger(
    BuildContext context, {
    required String title,
    String? description,
    bool showPrefixIcon = true,
    VoidCallback? onClosed,
  }) {
    return KvToast._(
      context: context,
      toastContent: KvToastContent.danger(
        title: title,
        description: description,
        showPrefixIcon: showPrefixIcon,
        onClosed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          onClosed?.call();
        },
      ),
    );
  }

  final BuildContext context;
  final KvToastContent toastContent;

  void show() {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: toastContent,
          backgroundColor: toastContent.background,
          margin: toastContent.margin,
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: toastContent.borderRadius),
          behavior: SnackBarBehavior.floating,
          duration: toastContent.displayDuration,
        ),
      );
  }

  void hide() {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }
}
