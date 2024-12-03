import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:flutter/material.dart';

import '../utils/radio_group.dart';

class UatDataText extends StatefulWidget {
  const UatDataText({super.key, required this.title});

  final String title;

  @override
  State<UatDataText> createState() => UatDataTextState();
}

class UatDataTextState extends State<UatDataText> {
  bool enabled = true;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KvAppBar(
        visibleBack: true,
        onBackPressed: () {
          Navigator.pop(context);
        },
        child: KvAppBarPage(
          pageTitle: widget.title,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              _UatContentText(),
              SizedBox(height: 24),
              _UatTextTitleL(),
              SizedBox(height: 24),
              _UatTextContentL(),
              SizedBox(height: 24),
              _UatValueText(),
              SizedBox(height: 24),
              _UatTextHelperDesc(),
              SizedBox(height: 24),
              _UatTextHelperError(),
              SizedBox(height: 24),
              _UatTextTrend(),
              SizedBox(height: 24),
              _UatTextSubContent(),
              SizedBox(height: 24),
              _UatTextSubContentGroup(),
              SizedBox(height: 24),
              _UatTextSelectorCaption(),
              SizedBox(height: 24),
              _UatTextLink(),
              SizedBox(height: 24),
              _UatTextPayment(),
              SizedBox(height: 24),
              _UatTextHeadline(),
            ],
          ),
        ),
      ),
    );
  }
}

class _UatTextHeadline extends StatefulWidget {
  const _UatTextHeadline();

  @override
  State<_UatTextHeadline> createState() => _UatTextHeadlineState();
}

class _UatTextHeadlineState extends State<_UatTextHeadline> {
  bool visible = true;
  KvTextHeadlineStyle style = KvTextHeadlineStyle.neutral;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const KvTextTitleL(title: '13. Text/Headline'),
        const SizedBox(height: 16),
        KvTextHeadline(
          value: '35.9',
          unit: 'triệu',
          visibleValue: visible,
          style: style,
        ),
        const SizedBox(height: 16),
        RadioGroup<KvTextHeadlineStyle>(
          title: 'Style',
          initialValue: KvTextHeadlineStyle.neutral,
          items: KvTextHeadlineStyle.values,
          onChanged: (value) {
            setState(() => style = value);
          },
        ),
        const SizedBox(height: 24),
        KvCheckbox(
          value: visible,
          content: 'visible',
          onChanged: (value) {
            setState(() => visible = value);
          },
        ),
      ],
    );
  }
}

class _UatTextPayment extends StatelessWidget {
  const _UatTextPayment();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        KvTextTitleL(title: '12. Text/Payment'),
        SizedBox(height: 16),
        KvTextPayment(
          number: '999.999',
        ),
      ],
    );
  }
}

class _UatTextLink extends StatelessWidget {
  const _UatTextLink();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        KvTextTitleL(title: '11. Text/Link'),
        SizedBox(height: 16),
        KvTextLink(
          link: 'Text link',
        ),
      ],
    );
  }
}

class _UatTextSelectorCaption extends StatelessWidget {
  const _UatTextSelectorCaption();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        KvTextTitleL(title: '10. Text/Selector Caption'),
        SizedBox(height: 16),
        KvTextSelectorCaption(
          text: 'Selector Caption',
        ),
      ],
    );
  }
}

class _UatTextSubContentGroup extends StatelessWidget {
  const _UatTextSubContentGroup();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        KvTextTitleL(title: '9. Text/Sub Content Group'),
        SizedBox(height: 16),
        KvTextSubContentGroup(
          subContents: [
            KvTextSubContent(subContent: 'Sub Content 1'),
            KvTextSubContent(subContent: 'Sub Content 2'),
            KvTextSubContent(subContent: 'Sub Content 3'),
            KvTextSubContent(subContent: 'Sub Content 4'),
          ],
        ),
      ],
    );
  }
}

class _UatTextSubContent extends StatelessWidget {
  const _UatTextSubContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        KvTextTitleL(title: '8. Text/Sub Content'),
        SizedBox(height: 16),
        KvTextSubContent(
          subContent: 'Sub Content',
        ),
      ],
    );
  }
}

class _UatTextTrend extends StatelessWidget {
  const _UatTextTrend();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const KvTextTitleL(title: '7. Text/Trend'),
        const SizedBox(height: 16),
        Row(
          children: const [
            KvTextTrend(
              text: '123.12',
              type: KvTextTrendType.up,
            ),
            SizedBox(width: 24),
            KvTextTrend(
              text: '456.78',
              type: KvTextTrendType.down,
            ),
          ],
        ),
      ],
    );
  }
}

class _UatTextHelperError extends StatelessWidget {
  const _UatTextHelperError();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        KvTextTitleL(title: '6. Text/Helper/Error'),
        SizedBox(height: 16),
        KvTextHelperError(
          errorText: 'The Quick Brown Fox Jumps Over The Lazy Dog',
        ),
      ],
    );
  }
}

class _UatTextHelperDesc extends StatelessWidget {
  const _UatTextHelperDesc();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        KvTextTitleL(title: '5. Text/Helper/Description'),
        SizedBox(height: 16),
        KvTextHelperDescription(
          descText: 'The Quick Brown Fox Jumps Over The Lazy Dog',
        ),
      ],
    );
  }
}

class _UatValueText extends StatefulWidget {
  const _UatValueText();

  @override
  State<_UatValueText> createState() => _UatValueTextState();
}

class _UatValueTextState extends State<_UatValueText> {
  KvTextValueHierarchy hierarchy = KvTextValueHierarchy.primaryMedium;

  bool showValue = true;
  bool showPrimarySupport = false;
  bool showSecondarySupport = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const KvTextTitleL(title: '4. Text/Value'),
        const SizedBox(height: 16),
        KvTextValue(
          hierarchy: hierarchy,
          value: showValue ? 'Primary Value' : null,
          primarySupport: showPrimarySupport
              ? KvTag(
                  label: 'Tag label',
                )
              : null,
          secondarySupport: showSecondarySupport
              ? const KvBadge(
                  value: '1',
                )
              : null,
        ),
        const SizedBox(height: 16),
        RadioGroup<KvTextValueHierarchy>(
          title: 'Hierarchy',
          initialValue: KvTextValueHierarchy.primaryMedium,
          items: KvTextValueHierarchy.values,
          onChanged: (value) {
            setState(() => hierarchy = value);
          },
        ),
        const SizedBox(height: 24),
        KvCheckbox(
          value: showValue,
          content: 'Show value',
          onChanged: (value) {
            setState(() => showValue = value);
          },
        ),
        const SizedBox(height: 16),
        KvCheckbox(
          value: showPrimarySupport,
          content: 'Show Primary Support',
          onChanged: (value) {
            setState(() => showPrimarySupport = value);
          },
        ),
        const SizedBox(height: 16),
        KvCheckbox(
          value: showSecondarySupport,
          content: 'Show Secondary Support',
          onChanged: (value) {
            setState(() => showSecondarySupport = value);
          },
        ),
      ],
    );
  }
}

class _UatTextContentL extends StatelessWidget {
  const _UatTextContentL();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        KvTextTitleL(title: '3. Text/Content L'),
        SizedBox(height: 16),
        KvTextContentL(
          content: 'The Quick Brown Fox Jumps Over The Lazy Dog',
        ),
      ],
    );
  }
}

class _UatTextTitleL extends StatelessWidget {
  const _UatTextTitleL();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        KvTextTitleL(title: '2. Text/Title L'),
        SizedBox(height: 16),
        KvTextTitleL(
          title: 'The Quick Brown Fox Jumps Over The Lazy Dog',
        ),
      ],
    );
  }
}

class _UatContentText extends StatefulWidget {
  const _UatContentText();

  @override
  State<_UatContentText> createState() => _UatContentTextState();
}

class _UatContentTextState extends State<_UatContentText> {
  KvTextContentHierarchy hierarchy = KvTextContentHierarchy.primary;
  KvTextContentWeight weight = KvTextContentWeight.regular;

  bool showPrimarySupport = false;
  bool showSecondarySupport = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const KvTextTitleL(title: '1. Text/Content'),
        const SizedBox(height: 16),
        KvTextContent(
          hierarchy: hierarchy,
          weight: weight,
          content: 'U là trời',
          primarySupport: showPrimarySupport
              ? KvTag(
                  label: 'Tag label',
                )
              : null,
          secondarySupport: showSecondarySupport
              ? const KvBadge(
                  value: '1',
                )
              : null,
        ),
        const SizedBox(height: 16),
        RadioGroup<KvTextContentHierarchy>(
          title: 'Hierarchy',
          initialValue: KvTextContentHierarchy.primary,
          items: KvTextContentHierarchy.values,
          onChanged: (value) {
            setState(() => hierarchy = value);
          },
        ),
        const SizedBox(height: 16),
        RadioGroup<KvTextContentWeight>(
          title: 'Weight',
          initialValue: KvTextContentWeight.regular,
          items: KvTextContentWeight.values,
          onChanged: (value) {
            setState(() => weight = value);
          },
        ),
        const SizedBox(height: 24),
        KvCheckbox(
          value: showPrimarySupport,
          content: 'Show Primary Support',
          onChanged: (value) {
            setState(() => showPrimarySupport = value);
          },
        ),
        const SizedBox(height: 16),
        KvCheckbox(
          value: showSecondarySupport,
          content: 'Show Secondary Support',
          onChanged: (value) {
            setState(() => showSecondarySupport = value);
          },
        ),
      ],
    );
  }
}
