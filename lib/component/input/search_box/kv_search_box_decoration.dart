enum KvSearchBoxShape {
  box,
  pill,
}

class KvSearchBoxDecoration {
  const KvSearchBoxDecoration({
    this.shape = KvSearchBoxShape.box,
    this.showSearchIcon = true,
    this.onLayer2 = false,
    this.hintText = '',
  });

  final KvSearchBoxShape shape;
  final bool showSearchIcon;
  final bool onLayer2;
  final String hintText;

  KvSearchBoxDecoration copyWith({
    KvSearchBoxShape? shape,
    bool? showSearchIcon,
    bool? onLayer2,
    String? hintText,
  }) {
    return KvSearchBoxDecoration(
      shape: shape ?? this.shape,
      showSearchIcon: showSearchIcon ?? this.showSearchIcon,
      onLayer2: onLayer2 ?? this.onLayer2,
      hintText: hintText ?? this.hintText,
    );
  }
}
