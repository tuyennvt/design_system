import 'package:flutter/material.dart';
import '../kv_design_system.dart';

class BreakpointS implements Breakpoint {
	@override
	double get globalPaddingXS1 => KvDesignSystem().paddingH;
	@override
	double get globalPaddingXS2 => KvDesignSystem().padding1;
	@override
	double get globalPaddingXS3 => KvDesignSystem().padding1H;
	@override
	double get globalPaddingXS1H => KvDesignSystem().paddingWillRemoveToken;
	@override
	double get globalPaddingXS2H => KvDesignSystem().paddingHQ;
	@override
	double get globalPaddingS1 => KvDesignSystem().padding2;
	@override
	double get globalPaddingS2 => KvDesignSystem().padding3;
	@override
	double get globalPaddingS3 => KvDesignSystem().padding4;
	@override
	double get globalPaddingS4 => KvDesignSystem().padding5;
	@override
	double get globalPaddingS2H => KvDesignSystem().padding2H;
	@override
	double get globalPaddingS3H => KvDesignSystem().padding3H;
	@override
	double get globalPaddingS4H => KvDesignSystem().padding4H;
	@override
	double get globalPaddingM1 => KvDesignSystem().padding6;
	@override
	double get globalPaddingM2 => KvDesignSystem().padding8;
	@override
	double get globalPaddingM3 => KvDesignSystem().padding10;
	@override
	double get globalPaddingM4 => KvDesignSystem().padding12;
	@override
	double get globalPaddingL1 => KvDesignSystem().padding14;
	@override
	double get globalPaddingL2 => KvDesignSystem().padding17;
	@override
	double get globalPaddingL3 => KvDesignSystem().padding20;
	@override
	double get globalPaddingL4 => KvDesignSystem().padding23;
	@override
	double get globalMarginXS2 => KvDesignSystem().margin1;
	@override
	double get globalMarginS1 => KvDesignSystem().margin2;
	@override
	double get globalMarginS2 => KvDesignSystem().margin3;
	@override
	double get globalMarginS3 => KvDesignSystem().margin4;
	@override
	double get globalMarginS4 => KvDesignSystem().margin5;
	@override
	double get globalMarginM1 => KvDesignSystem().margin6;
	@override
	double get globalMarginM2 => KvDesignSystem().margin8;
	@override
	double get globalMarginM3 => KvDesignSystem().margin10;
	@override
	double get globalMarginM4 => KvDesignSystem().margin12;
	@override
	double get globalGutterXS1 => KvDesignSystem().gutterH;
	@override
	double get globalGutterXS2 => KvDesignSystem().gutter1;
	@override
	double get globalGutterXS3 => KvDesignSystem().gutter1H;
	@override
	double get globalGutterS1 => KvDesignSystem().gutter2;
	@override
	double get globalGutterS2 => KvDesignSystem().gutter3;
	@override
	double get globalGutterS3 => KvDesignSystem().gutter4;
	@override
	double get globalGutterS4 => KvDesignSystem().gutter5;
	@override
	double get globalGutterS2H => KvDesignSystem().gutter2H;
	@override
	double get globalGutterS3H => KvDesignSystem().gutter3H;
	@override
	double get globalGutterS4H => KvDesignSystem().gutter4H;
	@override
	double get globalGutterM1 => KvDesignSystem().gutter6;
	@override
	double get globalGutterM2 => KvDesignSystem().gutter8;
	@override
	double get globalSizeS1 => KvDesignSystem().sizeBox2;
	@override
	double get globalSizeS2 => KvDesignSystem().sizeBox3;
	@override
	double get globalSizeS3 => KvDesignSystem().sizeBox4;
	@override
	double get globalSizeS4 => KvDesignSystem().sizeBox5;
	@override
	double get globalSizeS2H => KvDesignSystem().sizeBox2H;
	@override
	double get globalSizeS3H => KvDesignSystem().sizeBox3H;
	@override
	double get globalSizeS4H => KvDesignSystem().sizeBox4H;
	@override
	double get globalSizeS5H => KvDesignSystem().sizeBox5H;
	@override
	double get globalSizeM1 => KvDesignSystem().sizeBox6;
	@override
	double get globalSizeM2 => KvDesignSystem().sizeBox8;
	@override
	double get globalSizeM3 => KvDesignSystem().sizeBox10;
	@override
	double get globalSizeM4 => KvDesignSystem().sizeBox12;
	@override
	double get globalSizeM2H => KvDesignSystem().sizeBox7;
	@override
	double get globalSizeM4H => KvDesignSystem().sizeBox11;
	@override
	double get globalSizeL1 => KvDesignSystem().sizeBox14;
	@override
	double get globalSizeL2 => KvDesignSystem().sizeBox17;
	@override
	double get globalSizeL3 => KvDesignSystem().sizeBox20;
	@override
	double get globalSizeL4 => KvDesignSystem().sizeBox23;
	@override
	double get globalSizeXL1 => KvDesignSystem().sizeBox26;
	@override
	double get globalSizeXL2 => KvDesignSystem().sizeBox30;
	@override
	double get globalSizeXL3 => KvDesignSystem().sizeBox34;
	@override
	double get globalSizeXL4 => KvDesignSystem().sizeBox38;
	@override
	double get globalStrokeMH => 0.5;
	@override
	double get globalStrokeM => 1;
	@override
	double get globalIconXXS => KvDesignSystem().sizeBox3;
	@override
	double get globalIconXS => KvDesignSystem().sizeBox4;
	@override
	double get globalIconS => KvDesignSystem().sizeBox5;
	@override
	double get globalIconM => KvDesignSystem().sizeBox6;
	@override
	double get globalIconL => KvDesignSystem().sizeBox7;
	@override
	double get globalIconXL => KvDesignSystem().sizeBox8;
	@override
	double get globalIconXXL => KvDesignSystem().sizeBox9;
	@override
	double get deviceWidth => 375;
	@override
	double get deviceHeight => 812;
	@override
	double get deviceMinHeight => 812;
	@override
	double get safeAreaPaddingTop => 36;
	@override
	double get safeAreaPaddingBottom => 34;
	@override
	double get safeAreaHeightTop => 36;
	@override
	double get safeAreaHeightBottom => 34;
	@override
	double get sheetMaxHeight => 762;
	@override
	double get sheetMinHeight => 200;
	@override
	double get formCheckboxRadio => KvDesignSystem().sizeBox5;

}
