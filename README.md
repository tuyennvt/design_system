# Employee Flutter Design System

Package Flutter bao gồm các widget được triển khai theo Design System

## Getting started

Gồm 2 phần chính:

### Foundation

Các biến màu và kích thước sẽ được khai báo ở các class có prefix StyleDictionary. Đây là các class
được tạo tự động khi bên Fnb thực hiện gen lại token design. Không chỉnh sửa hoặc viết thêm các biến
vào các file này. Khi bên Fnb thực hiện gen code các thay đổi nằm ở nhánh design. Thực hiện rebase
để lấy cái giá trị mới vào nhánh dev.

#### 1. KvTextStyles

Class bao gồm các style của text. Sử dụng lệnh gọi static tới các function để lấy cái style tương
ứng. Cho phép thay đổi màu. Khi cần sử dụng một style riêng biệt hãy sử dụng function freeStyle.

Ex:

```
KvTextStyles.bodyL();

KvTextStyles.labelL(color: KvDesignSystem().colorTextNeutralBase);
```

#### 2. KvSvgAsset

Các icon dùng trong package sẽ buộc phải có kiểu svg. Class này nhằm mục đích validate asset đầu vào
cho các widget có icon. Tham số assetPackage để chỉ ra đường dẫn tuyệt đối của tài sản.

Ex:

```
KvSvgAsset(
    'assets/icons/bars-progress.svg',
    assetPackage: 'packages/kv_design_system/',
)
```

#### 3. KvIcon

Các icon trong package đều sẽ được sử dụng qua widget KvIcon. Cho phép thay đổi màu sắc của icon,
đây là lý do phải sử dụng svg. Kích thước sẽ được định cấu hình qua KvIconSize

Ex:

```
KvIcon(
    assetIcon: KvSvgAsset(
        'assets/icons/bars-progress.svg',
        assetPackage: packageRoot,
    ),
    color: KvDesignSystem().colorTextNeutralSecondary,
    size: KvIconSize.size16,
)
```

#### 4. KvShadown

Define các level shadow dùng trong package.

Ex.

```
KvShadow.level1();
```

### Component

Các widget được viết lại để đảm bảo tuân theo Design System. Thường thì các widget sau khi viết lại
đều sẽ gồm các tham số: Size, Variant, Type, Style. Tuỳ vào các widget mà các tham số có thể khác
nhau. Khi dev thực hiện code thì nhìn vào design để có thể cấu hình các widget sao cho phù hợp với
nhu cầu sử dụng.

Các widget sẽ có prefix là Kv

Ex.

```
KvCircleButton(),
```

#### 1. Button

Hiện tại trong package đã triển khai được các kiểu button sau: CircleButton, CommonButton,
InlineButton.

Khi sử dụng gặp trường hợp cần disabled button thì onPressed sẽ là null.

Ex.

```
KvCommonButton(
        buttonSize: KvCommonButtonSize.medium,
        buttonVariant: KvCommonButtonVariant.primary,
        buttonStyle: KvCommonButtonStyle.solidButton,
        onPressed: () {},
        assetIcon: showIcon
            ? KvSvgAsset(
                'assets/icons/bars-progress.svg',
                )
            : null,
        label: 'Label Button',
        badgeText: '1',
    ),
```

#### 2. Divider

KvDivider có indent và endIntent tương tự như margin left và right, thickness là độ dày của divider.

Ex.

```
KvDivider()
```

#### 3. Header

Trong package được đổi lại tên là AppBar.

Nên đặt KvAppBar vào tham số appBar của Scaffold để đạt được hiệu quả tốt nhất.

Để hiển thị nút back cần đặt tham số visibleBack = true, mặc định là false. Xử lý sự kiện back trong
callback onBackPressed().

Child của app bar sẽ phải là một trong các loại sau: KvAppBarLogo, KvAppBarTitle, KvAppBarPage,
KvAppBarMore, KvAppBarBack, KvAppBarSearchBox. Với mỗi child của app bar sẽ có những config riêng,
dev xem design và chọn đúng config mong muốn.

Action của app bar sẽ nhận vào các KvButton gồm KvCircleButton, KvCommonButton, KvInlineButton.

Bottom của app bar sẽ nhận vào widget, tuy nhiên sẽ bị giới hạn chiều cao ở 40px. Dùng trong các
trường hợp sử dụng Tabbar,...

Ex.

```
KvAppBar(
    child: KvAppBarTitle(
        pageTitle: 'Demo Design System',
    ),
)
```

#### 4. Tag

KvTag ngoài label sẽ có thêm prefixIcon và suffixIcon. Xử lý sự kiện nhấn suffixIcon qua callback
onSuffixIconPressed()

Ex.

```
KvTag(label: 'Label Tag')
```

#### 5. Toast

KvToast được viết lại từ tiện ích SnackBar của flutter.

Có 5 loại toast gồm system, information, success, warning, danger.

Toast sẽ chỉ hiển thị khi được gọi func show().

Callback onClosed() được gọi khi user nhấn nút close trên toast để đóng toast. Hành vi mặc định của
package khi user nhấn nút x đã bao gồm đóng toast, dev ko cần xử lý đóng toast.

Khởi tạo toast thông qua các factory method tương ứng với loại toast cần tạo.

Ex.

```
KvToast.success(title: 'Thành công').show();
```

#### 6. Alert

KvAlert dùng tham số style để định kiểu
Ngoài ra các tham số còn lại đều có thể tuỳ chọn, dev xem design để cấu hình sao cho phù hợp.

Ex.

```
KvAlert(title: 'Alert title'),
```

#### 6. CacheNetworkImage

KvCacheNetworkImage được viết lại từ widget CacheNetworkImage.

Tham số imageType sẽ dùng để cấu hình image sẽ là kiểu avatar hay image đơn thuần.

Dev ko cần phải xử lý các trường hợp loading, error, not found.

Tham số imageUrl = null hoặc empty thì sẽ hiển thị image default.

Ngoài ra dùng imageSize để định kích thước cho image.

Ex.

```
KvCacheNetworkImage(imageUrl: 'https://picsum.photos/200')
```

#### 7. Icon Container

Icon Container sẽ có 1 vùng đệm ngoài icon.

Ngoài ra sẽ có callback onTap() để dev xử lý nếu cần.

iconContainerSize và iconContainerStyle sẽ dùng để định kích thước và style theo nhu cầu.

Ex.

```
KvIconContainer(
        assetIcon: KvSvgAsset(
            'assets/icons/bars-progress.svg',
        ),
)
```

#### 8. Banner

bannerType mặc định là KvBannerType.defaultBanner

showAnnouncementIcon = true cho phép hiển thị banner icon.

Ngoài ra còn có actionButton nhận vào một KvInlineButton và assetActionIcon

maxLine mặc định = 1. Xem design để quyết định maxLine khi dùng.

Ex.

```
KvBanner(content: 'Banner content')
```

#### 9. Dialog

Khi sử dụng function showDialog của flutter thì trong buider phải trả về widget KvDialog.

Tham số dialogAction sẽ quyết định kiểu của các action dialog. Được khởi tạo qua các factory method:

KvDialogAction.actionDefault()

KvDialogAction.actionVerticalDefault()

KvDialogAction.actionHighest()

KvDialogAction.confirmationDefault()

KvDialogAction.confirmationHighest()

Dev nhìn design để quyết định nên sử dụng kiểu dialog action nào.

Nút X để thoát khỏi dialog, package không xử lý sự kiện đóng dialog. Dev tự implement

Ex.

```
showDialog(
    context: context,
    builder: (BuildContext context) {
        return KvDialog(
            title: 'Popup Title',
            onClosePressed: () {
                Navigator.pop(context);
            },
            content: Text(
                'This is a popup content',
                style: KvTextStyles.bodyL(),
            ),
            dialogAction: KvDialogAction.actionDefault(
                labelPositive: 'Primary',
                onPositivePressed: () {},
                labelNegative: 'Secondary',
                onNegativePressed: () {},
            )
        );
    },
);
```

#### 10. Input Box

KvInputBox có cơ chế validate lỗi giống như TextFormField

decoration là KvInputDecoration() không phải InputDecoration() mặc định của flutter.

KvInputDecoration sẽ có secondaryLabelText dùng để đặt dấu * cho trường hợp bắt buộc nhập.

Không thể set assetSuffixIcon và suffixText cùng lúc

Ngoài ra có thể set error bằng errorText trong decoration, helperText và errorText cũng không thể
dùng cùng lúc.

Ex.

```
KvInputBox(
    decoration: KvInputDecoration(
        labelText: 'Label Text',
    ),
),
```

#### 11. Search Box

Tham số decoration nhận vào một KvSearchBoxDecoration()

Tham số shape trong decoration để định kiểu bo góc.

Chú ý tham số onLayer2 trong decoration. Khi search box đc đặt trên background là layer2 thì
onLayer2 phải là true.

Ngoài ra dùng size để cấu hình kích thước.

Ex.

```
KvSearchBox(
    decoration: KvSearchBoxDecoration(
        hintText: 'Search',
        onLayer2: true,
        shape: KvSearchBoxShape.box,
    ),
)
```

#### 12. Select Box

KvSelectBox cũng có cơ chế validate như TextFormField

initialValue để nhận giá trị ban đầu.

decoration là KvSelectBoxDecoration() tương tự như KvInputDecoration(),

Callback onSelected() phải là async. Return giá trị sau khi user chọn.

Ex.

```
KvSelectBox(
    decoration: const KvSelectBoxDecoration(labelText: 'Label Text'),
    onSelected: () async {
        return await showDialog<String?>(
            context: context,
            builder: (context) {
                return KvDialog(
                    content: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                            ListTile(
                                title: const Text('Select option 1'),
                                onTap: () {
                                    Navigator.pop(
                                    context,
                                    'Select option 1',
                                    );
                                },
                            ),
                            ListTile(
                                title: const Text('Select option 2'),
                                onTap: () {
                                    Navigator.pop(
                                    context,
                                    'Select option 2',
                                    );
                                },
                            ),
                        ],
                    ),
                    dialogAction: KvDialogAction.confirmationHighest(
                        label: 'Đóng',
                        onPressed: () {
                            Navigator.pop(context);
                        },
                    ),
                );
            },
        );
    },
)
```

#### 13. Multi Select Box

Tương tự như Select Box nhưng cho phép chọn nhiều lựa chọn.

#### 14. Checkbox, Radio, Switch

Cách dùng như các widget gốc của Flutter.

Trong design thì toggle sẽ tương ứng với switch

#### 15. Badge

Có 2 badge là KvBadge và KvBadgeDot

KvBadge có thể đặt tham số badgeText để hiển thị số lượng.

#### 16. Data Text

Bao gồm các widget để hiển thị text một cách nhanh gọn. Data Text được sử dụng chủ yếu trong
component KvListTile.

#### 17. List Tile

KvListTile là widget dạng cấu trúc dùng để hiển thị các phần tử của một List.

Có 3 phần chính của một KvListTile bao gồm: Prefix, Content, Suffix.

Prefix và Suffix cho phép Dev tuỳ ý đặt các widget khác vào

Content sẽ gồm các tham số như sau: First Content, First Value, Second Content, Second Value,
External Content. Các tham số này chủ yếu nhận vào một Data Text.

Chú ý tham số layout, size và alignment. Dev xem design để quyết định cách sử dụng.

