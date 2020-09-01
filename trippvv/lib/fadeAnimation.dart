import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;
  const FadeAnimation({Key key , this.delay, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return ControlledAnimation(
      delay: Duration(milliseconds: (500* delay).round()),
      
    );
  }
}