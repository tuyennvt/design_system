import 'package:flutter/material.dart';

export 'content/kv_text_content.dart';
export 'content_l/kv_text_content_l.dart';
export 'headline/kv_text_headline.dart';
export 'helper/kv_text_helper_description.dart';
export 'helper/kv_text_helper_error.dart';
export 'selector_caption/kv_text_selector_caption.dart';
export 'selector_content/kv_text_selector_content.dart';
export 'sub_content/kv_text_sub_content.dart';
export 'sub_content_group/kv_text_sub_content_group.dart';
export 'title_l/kv_text_title_l.dart';
export 'trend/kv_text_trend.dart';
export 'value/kv_text_value.dart';

abstract class KvText extends Widget {
  const KvText({super.key});
}

enum KvTextSupportWidgetType {
  tag,
  badge,
  badgeDot,
  trendText,
  tagGroup,
}

abstract class KvTextSupportWidget extends Widget {
  const KvTextSupportWidget({super.key});

  KvTextSupportWidgetType get supportWidgetType;
}
