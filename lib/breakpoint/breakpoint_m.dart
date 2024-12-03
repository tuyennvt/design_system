import 'package:flutter/material.dart';
import '../kv_design_system.dart';

class BreakpointM implements Breakpoint {
	@override
	double get globalPaddingXS1 => KvDesignSystem().paddingH;
	@override
	double get globalPaddingXS2 => KvDesignSystem().padding1H;
	@override
	double get globalPaddingXS3 => KvDesignSystem().padding2;
	@override
	double get globalPaddingXS1H => KvDesignSystem().paddingWillRemoveToken;
	@override
	double get globalPaddingXS2H => KvDesignSystem().padding1;
	@override
	double get globalPaddingS1 => KvDesignSystem().padding2H;
	@override
	double get globalPaddingS2 => KvDesignSystem().padding3H;
	@override
	double get globalPaddingS3 => KvDesignSystem().padding4H;
	@override
	double get globalPaddingS4 => KvDesignSystem().padding5H;
	@override
	double get globalPaddingS2H => KvDesignSystem().padding3;
	@override
	double get globalPaddingS3H => KvDesignSystem().padding4;
	@override
	double get globalPaddingS4H => KvDesignSystem().padding5;
	@override
	double get globalPaddingM1 => KvDesignSystem().padding7;
	@override
	double get globalPaddingM2 => KvDesignSystem().padding9;
	@override
	double get globalPaddingM3 => KvDesignSystem().padding11;
	@override
	double get globalPaddingM4 => KvDesignSystem().padding13;
	@override
	double get globalPaddingL1 => KvDesignSystem().padding15H;
	@override
	double get globalPaddingL2 => KvDesignSystem().padding18H;
	@override
	double get globalPaddingL3 => KvDesignSystem().padding21H;
	@override
	double get globalPaddingL4 => KvDesignSystem().padding24H;
	@override
	double get globalMarginXS2 => KvDesignSystem().margin1;
	@override
	double get globalMarginS1 => KvDesignSystem().margin2H;
	@override
	double get globalMarginS2 => KvDesignSystem().margin3H;
	@override
	double get globalMarginS3 => KvDesignSystem().margin4H;
	@override
	double get globalMarginS4 => KvDesignSystem().margin5H;
	@override
	double get globalMarginM1 => KvDesignSystem().margin7;
	@override
	double get globalMarginM2 => KvDesignSystem().margin9;
	@override
	double get globalMarginM3 => KvDesignSystem().margin11;
	@override
	double get globalMarginM4 => KvDesignSystem().margin13;
	@override
	double get globalGutterXS1 => KvDesignSystem().gutter1;
	@override
	double get globalGutterXS2 => KvDesignSystem().gutter1H;
	@override
	double get globalGutterXS3 => KvDesignSystem().gutter2;
	@override
	double get globalGutterS1 => KvDesignSystem().gutter2H;
	@override
	double get globalGutterS2 => KvDesignSystem().gutter3H;
	@override
	double get globalGutterS3 => KvDesignSystem().gutter4H;
	@override
	double get globalGutterS4 => KvDesignSystem().gutter5H;
	@override
	double get globalGutterS2H => KvDesignSystem().gutter3;
	@override
	double get globalGutterS3H => KvDesignSystem().gutter4;
	@override
	double get globalGutterS4H => KvDesignSystem().gutter5;
	@override
	double get globalGutterM1 => KvDesignSystem().gutter7;
	@override
	double get globalGutterM2 => KvDesignSystem().gutter9;
	@override
	double get globalSizeS1 => KvDesignSystem().sizeBox2H;
	@override
	double get globalSizeS2 => KvDesignSystem().sizeBox3H;
	@override
	double get globalSizeS3 => KvDesignSystem().sizeBox4H;
	@override
	double get globalSizeS4 => KvDesignSystem().sizeBox5H;
	@override
	double get globalSizeS2H => KvDesignSystem().sizeBox3;
	@override
	double get globalSizeS3H => KvDesignSystem().sizeBox5;
	@override
	double get globalSizeS4H => KvDesignSystem().sizeBox5;
	@override
	double get globalSizeS5H => KvDesignSystem().sizeBox6;
	@override
	double get globalSizeM1 => KvDesignSystem().sizeBox7;
	@override
	double get globalSizeM2 => KvDesignSystem().sizeBox9;
	@override
	double get globalSizeM3 => KvDesignSystem().sizeBox11;
	@override
	double get globalSizeM4 => KvDesignSystem().sizeBox13;
	@override
	double get globalSizeM2H => KvDesignSystem().sizeBox8;
	@override
	double get globalSizeM4H => KvDesignSystem().sizeBox12;
	@override
	double get globalSizeL1 => KvDesignSystem().sizeBox15H;
	@override
	double get globalSizeL2 => KvDesignSystem().sizeBox18H;
	@override
	double get globalSizeL3 => KvDesignSystem().sizeBox21H;
	@override
	double get globalSizeL4 => KvDesignSystem().sizeBox24H;
	@override
	double get globalSizeXL1 => KvDesignSystem().sizeBox28;
	@override
	double get globalSizeXL2 => KvDesignSystem().sizeBox32;
	@override
	double get globalSizeXL3 => KvDesignSystem().sizeBox36;
	@override
	double get globalSizeXL4 => KvDesignSystem().sizeBox40;
	@override
	double get globalStrokeMH => 0.5;
	@override
	double get globalStrokeM => 1;
	@override
	double get globalIconXXS => KvDesignSystem().sizeBox3H;
	@override
	double get globalIconXS => KvDesignSystem().sizeBox4H;
	@override
	double get globalIconS => KvDesignSystem().sizeBox6;
	@override
	double get globalIconM => KvDesignSystem().sizeBox7;
	@override
	double get globalIconL => KvDesignSystem().sizeBox8;
	@override
	double get globalIconXL => KvDesignSystem().sizeBox9;
	@override
	double get globalIconXXL => KvDesignSystem().sizeBox10;
	@override
	double get deviceWidth => 430;
	@override
	double get deviceHeight => 932;
	@override
	double get deviceMinHeight => 932;
	@override
	double get safeAreaPaddingTop => 44;
	@override
	double get safeAreaPaddingBottom => 34;
	@override
	double get safeAreaHeightTop => 44;
	@override
	double get safeAreaHeightBottom => 34;
	@override
	double get sheetMaxHeight => 872;
	@override
	double get sheetMinHeight => 240;
	@override
	double get formCheckboxRadio => KvDesignSystem().sizeBox6;

}
