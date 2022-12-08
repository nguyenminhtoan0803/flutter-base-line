import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

enum SpinkitType { wave, circle }

class SpinKitIndicator extends StatelessWidget {
  final SpinkitType type;

  const SpinKitIndicator({Key? key, this.type = SpinkitType.wave})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget widget;
    switch (type) {
      case SpinkitType.wave:
        widget = const SpinKitWave(
          color: Color(0xFFF4511E),
          size: 50.0,
        );
        break;
      case SpinkitType.circle:
        widget = const SpinKitFadingCircle(
          color: Color(0xFFF4511E),
          size: 50.0,
        );
        break;
    }
    return Center(
      child: widget,
    );
  }
}
