import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:example/app_bar/uat_app_bar.dart';
import 'package:example/badge/uat_badge.dart';
import 'package:example/button/common_button.dart';
import 'package:example/check_box/uat_check_box.dart';
import 'package:example/dialog/uat_dialog.dart';
import 'package:example/icon_container/uat_icon_container.dart';
import 'package:example/image/uat_image.dart';
import 'package:example/input_box/uat_input_box.dart';
import 'package:example/multi_select_box/uat_multi_select_box.dart';
import 'package:example/radio/uat_radio.dart';
import 'package:example/search_box/uat_search_box.dart';
import 'package:example/select_box/uat_select_box.dart';
import 'package:example/switch/uat_switch.dart';
import 'package:example/tag/uat_tag.dart';
import 'package:flutter/material.dart';

import 'alert/uat_alert.dart';
import 'banner/uat_banner.dart';
import 'button/circle_button.dart';
import 'button/inline_button.dart';
import 'data_text/uat_data_text.dart';
import 'list/uat_list.dart';
import 'switch/uat_price_switch.dart';
import 'toast/uat_toast.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: const KvAppBar(
          child: KvAppBarTitle(
            pageTitle: 'Demo Design System',
          ),
        ),
        body: Center(
          child: Icon(KvIcons.arrow_down_left_regular),
        ),
        // body: ListView.separated(
        //   itemBuilder: (BuildContext context, int index) {
        //     return _MenuItem(
        //       index: index + 1,
        //       menu: _menu[index],
        //     );
        //   },
        //   separatorBuilder: (BuildContext context, int index) {
        //     return const KvDivider();
        //   },
        //   itemCount: _menu.length,
        // ),
      ),
    );
  }

  final List<_Menu> _menu = [
    const _Menu(
      title: 'Common Button',
      widget: CommonButton(
        title: 'Common Button',
      ),
    ),
    const _Menu(
      title: 'Circle Button',
      widget: CircleButton(
        title: 'Circle Button',
      ),
    ),
    const _Menu(
      title: 'Inline Button',
      widget: InlineButton(
        title: 'Inline Button',
      ),
    ),
    const _Menu(
      title: 'Header',
      widget: UatAppBar(
        title: 'Header',
      ),
    ),
    const _Menu(
      title: 'Tag',
      widget: UatTag(
        title: 'Tag',
      ),
    ),
    const _Menu(
      title: 'Toast',
      widget: UatToast(
        title: 'Toast',
      ),
    ),
    const _Menu(
      title: 'Alert',
      widget: UatAlert(
        title: 'Alert',
      ),
    ),
    const _Menu(
      title: 'Thumbnail',
      widget: UatImage(
        title: 'Thumbnail',
      ),
    ),
    const _Menu(
      title: 'Icon Container',
      widget: UatIconContainer(
        title: 'Icon Container',
      ),
    ),
    const _Menu(
      title: 'Banner',
      widget: UatBanner(
        title: 'Banner',
      ),
    ),
    const _Menu(
      title: 'Popup',
      widget: UatDialog(
        title: 'Popup',
      ),
    ),
    const _Menu(
      title: 'Input box',
      widget: UatInputBox(
        title: 'Input box',
      ),
    ),
    const _Menu(
      title: 'Search box',
      widget: UatSearchBox(
        title: 'Search box',
      ),
    ),
    const _Menu(
      title: 'Select box',
      widget: UatSelectBox(
        title: 'Select box',
      ),
    ),
    const _Menu(
      title: 'Multi Select box',
      widget: UatMultiSelectBox(
        title: 'Multi Select box',
      ),
    ),
    const _Menu(
      title: 'Checkbox',
      widget: UatCheckbox(
        title: 'Checkbox',
      ),
    ),
    const _Menu(
      title: 'Radio',
      widget: UatRadio(
        title: 'Radio',
      ),
    ),
    const _Menu(
      title: 'Toggle',
      widget: UatSwitch(
        title: 'Toggle',
      ),
    ),
    const _Menu(
      title: 'Toggle Price',
      widget: UatPriceSwitch(
        title: 'Toggle Price',
      ),
    ),
    const _Menu(
      title: 'Badge',
      widget: UatBadge(
        title: 'Badge',
      ),
    ),
    const _Menu(
      title: 'Data Text',
      widget: UatDataText(
        title: 'Data Text',
      ),
    ),
    const _Menu(
      title: 'List',
      widget: UatList(
        title: 'List',
      ),
    ),
  ];
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({
    required this.index,
    required this.menu,
  });

  final int index;
  final _Menu menu;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$index. ${menu.title}',
        style: KvTextStyles.labelL(),
      ),
      trailing: const Icon(Icons.arrow_forward_rounded),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return menu.widget;
        }));
      },
    );
  }
}

class _Menu {
  final String title;
  final Widget widget;

  const _Menu({
    required this.title,
    required this.widget,
  });
}
