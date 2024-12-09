import 'package:flutter/material.dart';
import 'package:kv_design_system/kv_design_system.dart';

enum KvChipSize {
  small,
  medium,
  large,
}

extension KvChipSizeExtension on KvChipSize {
  double get height {
    switch (this) {
      case KvChipSize.small:
        return KvDesignSystem().chipSizeS;
      case KvChipSize.medium:
        return KvDesignSystem().chipSizeM;
      case KvChipSize.large:
        return KvDesignSystem().chipSizeL;
    }
  }

  double get minWidth {
    switch (this) {
      case KvChipSize.small:
        return KvDesignSystem().chipMinWidthS;
      case KvChipSize.medium:
        return KvDesignSystem().chipMinWidthM;
      case KvChipSize.large:
        return KvDesignSystem().chipMinWidthL;
    }
  }
}

enum KvChipCategory {
  filter,
  suggestion,
}

enum KvChipStyle {
  outline,
  faded,
  solid,
}

class KvChipThemeData {
  const KvChipThemeData({
    required this.size,
    required this.category,
    required this.style,
    required this.selected,
    required this.enabled,
  });

  final KvChipSize size;
  final KvChipCategory category;
  final KvChipStyle style;
  final bool selected;
  final bool enabled;

  KvDesignSystem get _designSystem => KvDesignSystem();

  Color get bgColor {
    switch (category) {
      case KvChipCategory.filter:
        return _bgFilterColor;
      case KvChipCategory.suggestion:
        return _bgSuggestionColor;
    }
  }

  Color get _bgFilterColor {
    switch (style) {
      case KvChipStyle.outline:
        return _bgFilterOutlineColor;
      case KvChipStyle.faded:
        return _bgFilterFadedColor;
      case KvChipStyle.solid:
        return _bgFilterSolidColor;
    }
  }

  Color get _bgFilterOutlineColor {
    if (enabled) {
      if (selected) {
        return _designSystem.chipColorBGSelectedDefault;
      } else {
        return _designSystem.colorTransparent;
      }
    } else {
      if (selected) {
        return _designSystem.chipColorBGSelectedDisabled;
      } else {
        return _designSystem.colorTransparent;
      }
    }
  }

  Color get _bgFilterFadedColor {
    if (enabled) {
      if (selected) {
        return _designSystem.chipColorBGSelectedDefault;
      } else {
        return _designSystem.chipColorBGUnSelectedFadedDefault;
      }
    } else {
      if (selected) {
        return _designSystem.chipColorBGSelectedDisabled;
      } else {
        return _designSystem.chipColorBGUnSelectedFadedDefault;
      }
    }
  }

  Color get _bgFilterSolidColor {
    if (enabled) {
      if (selected) {
        return _designSystem.chipColorBGSelectedDefault;
      } else {
        return _designSystem.chipColorBGUnSelectedSolidDefault;
      }
    } else {
      if (selected) {
        return _designSystem.chipColorBGSelectedDisabled;
      } else {
        return _designSystem.chipColorBGUnSelectedSolidDisabled;
      }
    }
  }

  Color get _bgSuggestionColor {
    switch (style) {
      case KvChipStyle.outline:
        return _bgSuggestionOutlineColor;
      case KvChipStyle.faded:
        return _bgSuggestionFadedColor;
      case KvChipStyle.solid:
        return _bgSuggestionSolidColor;
    }
  }

  Color get _bgSuggestionOutlineColor {
    if (enabled) {
      if (selected) {
        return _designSystem.chipColorBGActiveDefault;
      } else {
        return _designSystem.colorTransparent;
      }
    } else {
      if (selected) {
        return _designSystem.chipColorBGActiveDisabled;
      } else {
        return _designSystem.colorTransparent;
      }
    }
  }

  Color get _bgSuggestionFadedColor {
    if (enabled) {
      if (selected) {
        return _designSystem.chipColorBGActiveDefault;
      } else {
        return _designSystem.chipColorBGUnSelectedFadedDefault;
      }
    } else {
      if (selected) {
        return _designSystem.chipColorBGActiveDisabled;
      } else {
        return _designSystem.chipColorBGUnSelectedFadedDefault;
      }
    }
  }

  Color get _bgSuggestionSolidColor {
    if (enabled) {
      if (selected) {
        return _designSystem.chipColorBGActiveDefault;
      } else {
        return _designSystem.chipColorBGUnSelectedSolidDefault;
      }
    } else {
      if (selected) {
        return _designSystem.chipColorBGActiveDisabled;
      } else {
        return _designSystem.chipColorBGUnSelectedSolidDisabled;
      }
    }
  }

  Color? get borderColor {
    switch (category) {
      case KvChipCategory.filter:
        return _borderFilterColor;
      case KvChipCategory.suggestion:
        return _borderSuggestionColor;
    }
  }

  Color? get _borderFilterColor {
    switch (style) {
      case KvChipStyle.outline:
        return _borderFilterOutlineColor;
      case KvChipStyle.faded:
      case KvChipStyle.solid:
        return null;
    }
  }

  Color? get _borderFilterOutlineColor {
    if (enabled) {
      if (selected) {
        return _designSystem.chipColorBorderSelectedDefault;
      } else {
        return _designSystem.chipColorBorderUnSelectedDefault;
      }
    } else {
      if (selected) {
        return _designSystem.chipColorBorderSelectedDisabled;
      } else {
        return _designSystem.chipColorBorderUnSelectedDisabled;
      }
    }
  }

  Color? get _borderSuggestionColor {
    switch (style) {
      case KvChipStyle.outline:
        return _borderSuggestionOutlineColor;
      case KvChipStyle.faded:
      case KvChipStyle.solid:
        return null;
    }
  }

  Color? get _borderSuggestionOutlineColor {
    if (enabled) {
      if (selected) {
        return null;
      } else {
        return _designSystem.chipColorBorderUnSelectedDefault;
      }
    } else {
      if (selected) {
        return null;
      } else {
        return _designSystem.chipColorBorderUnSelectedDisabled;
      }
    }
  }

  Border? get border {
    switch (category) {
      case KvChipCategory.filter:
        final borderFilterColor = _borderFilterColor;
        return borderFilterColor != null
            ? Border.fromBorderSide(
                BorderSide(
                  color: borderFilterColor,
                  width: 1,
                ),
              )
            : null;
      case KvChipCategory.suggestion:
        final borderSuggestionColor = _borderSuggestionColor;
        return borderSuggestionColor != null
            ? Border.fromBorderSide(
                BorderSide(
                  color: borderSuggestionColor,
                  width: 1,
                ),
              )
            : null;
    }
  }

  Color get _labelColor {
    switch (category) {
      case KvChipCategory.filter:
        return _labelFilterColor;
      case KvChipCategory.suggestion:
        return _labelSuggestionColor;
    }
  }

  Color get _labelFilterColor {
    if (enabled) {
      if (selected) {
        return _designSystem.chipColorTextSelectedDefault;
      } else {
        return _designSystem.chipColorTextUnSelectedDefault;
      }
    } else {
      if (selected) {
        return _designSystem.chipColorTextSelectedDisabled;
      } else {
        return _designSystem.textNeutralDisabled;
      }
    }
  }

  Color get _labelSuggestionColor {
    if (enabled) {
      if (selected) {
        return _designSystem.chipColorTextActiveDefault;
      } else {
        return _designSystem.chipColorTextUnSelectedDefault;
      }
    } else {
      if (selected) {
        return _designSystem.chipColorTextActiveDisabled;
      } else {
        return _designSystem.textNeutralDisabled;
      }
    }
  }

  TextStyle get labelStyle {
    switch (size) {
      case KvChipSize.small:
        return KvTextStyles.labelS(color: _labelColor);
      case KvChipSize.medium:
        return KvTextStyles.labelS(color: _labelColor);
      case KvChipSize.large:
        return KvTextStyles.labelM(color: _labelColor);
    }
  }

  Color get prefixIconColor {
    switch (category) {
      case KvChipCategory.filter:
        return _prefixFilterIconColor;
      case KvChipCategory.suggestion:
        return _prefixSuggestionIconColor;
    }
  }

  Color get _prefixFilterIconColor {
    if (enabled) {
      if (selected) {
        return _designSystem.chipColorTextSelectedDefault;
      } else {
        return _designSystem.chipColorTextUnSelectedDefault;
      }
    } else {
      if (selected) {
        return _designSystem.chipColorTextSelectedDisabled;
      } else {
        return _designSystem.iconNeutralDisabled;
      }
    }
  }

  Color get _prefixSuggestionIconColor {
    if (enabled) {
      if (selected) {
        return _designSystem.chipColorTextActiveDefault;
      } else {
        return _designSystem.chipColorTextUnSelectedDefault;
      }
    } else {
      if (selected) {
        return _designSystem.chipColorTextActiveDisabled;
      } else {
        return _designSystem.iconNeutralDisabled;
      }
    }
  }

  Color get suffixIconColor {
    switch (category) {
      case KvChipCategory.filter:
        return _suffixFilterIconColor;
      case KvChipCategory.suggestion:
        return _suffixSuggestionIconColor;
    }
  }

  Color get _suffixFilterIconColor {
    if (enabled) {
      if (selected) {
        return _designSystem.iconPrimaryonFadedSecondaryAction;
      } else {
        return _designSystem.iconNeutralSecondaryAction;
      }
    } else {
      if (selected) {
        return _designSystem.chipColorTextSelectedDisabled;
      } else {
        return _designSystem.chipColorTextUnSelectedDisabled;
      }
    }
  }

  Color get _suffixSuggestionIconColor {
    if (enabled) {
      if (selected) {
        return _designSystem.chipColorTextActiveDefault;
      } else {
        return _designSystem.chipColorTextUnSelectedDefault;
      }
    } else {
      if (selected) {
        return _designSystem.chipColorTextActiveDisabled;
      } else {
        return _designSystem.iconNeutralDisabled;
      }
    }
  }

  double get gutter {
    switch (size) {
      case KvChipSize.small:
        return _designSystem.chipGutterS;
      case KvChipSize.medium:
        return _designSystem.chipGutterM;
      case KvChipSize.large:
        return _designSystem.chipGutterL;
    }
  }

  EdgeInsets get padding {
    switch (size) {
      case KvChipSize.small:
        return EdgeInsets.symmetric(horizontal: _designSystem.chipPaddingS);
      case KvChipSize.medium:
        return EdgeInsets.symmetric(horizontal: _designSystem.chipPaddingM);
      case KvChipSize.large:
        return EdgeInsets.symmetric(horizontal: _designSystem.chipPaddingL);
    }
  }

  BoxDecoration get decoration {
    return BoxDecoration(
      color: bgColor,
      border: border,
      borderRadius: BorderRadius.circular(50),
    );
  }

  KvIconSize get iconSize {
    switch (size) {
      case KvChipSize.small:
      case KvChipSize.medium:
        return KvIconSize.iconXXS;
      case KvChipSize.large:
        return KvIconSize.iconXS;
    }
  }

  KvBadgeSize get badgeSize {
    switch (size) {
      case KvChipSize.small:
        return KvBadgeSize.small;
      case KvChipSize.medium:
        return KvBadgeSize.small;
      case KvChipSize.large:
        return KvBadgeSize.medium;
    }
  }
}
