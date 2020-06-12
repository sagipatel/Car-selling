import 'package:flutter/material.dart';

class MkScreenUtilConfig {
  const MkScreenUtilConfig({
    this.width = 1080,
    this.height = 1920,
    this.allowFontScaling = false,
  });

  final double width;
  final double height;
  final bool allowFontScaling;
}

mixin MkScreenUtilProvider<T extends StatefulWidget> on State<T> {
  MkScreenUtilConfig get screenConfig;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      assert(screenConfig != null);
      MkScreenUtil.initialize(
        context: context,
        config: screenConfig,
      );
    });
  }
}

class MkScreenUtil {
  factory MkScreenUtil() => _instance;

  MkScreenUtil._({
    @required this.context,
    this.config,
  });

  static MkScreenUtil initialize({
    @required BuildContext context,
    MkScreenUtilConfig config = const MkScreenUtilConfig(),
  }) {
    assert(config != null);
    return _instance ??= MkScreenUtil._(
      context: context,
      config: config,
    );
  }

  static MkScreenUtil _instance;
  final BuildContext context;

  MediaQueryData get mq => MediaQuery.of(context);
  final MkScreenUtilConfig config;

  double get textScaleFactor => mq.textScaleFactor;
  double get pixelRatio => mq.devicePixelRatio;
  double get screenWidthDp => mq.size.width;
  double get screenHeightDp => mq.size.height;
  double get screenWidth => screenWidthDp * pixelRatio;
  double get screenHeight => screenHeightDp * pixelRatio;
  double get statusBarHeight => mq.padding.top * pixelRatio;
  double get bottomBarHeight => mq.padding.bottom * pixelRatio;
  double get keyboardHeight => mq.viewInsets.vertical;

  double setWidth(double width) => width * screenWidthDp / config.width;
  double setHeight(double height) => height * screenHeightDp / config.height;
  double setSp(double fontSize) => config.allowFontScaling
      ? setWidth(fontSize)
      : setWidth(fontSize) / textScaleFactor;
}

double sw(double width) => MkScreenUtil()?.setWidth(width) ?? width;

double sh(double height) => MkScreenUtil()?.setHeight(height) ?? height;

double sf(double fontSize) => MkScreenUtil()?.setSp(fontSize) ?? fontSize;
