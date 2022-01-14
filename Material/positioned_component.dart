import 'package:flutter/material.dart';

class PositionedComponent extends StatelessWidget {
  double? left;
  double? top;
  double? bottom;
  double? right;
  Widget child;
  PositionedComponent({Key? key, this.left, this.top, required this.child, this.bottom, this.right }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: child,
      bottom: bottom,
      right: right,
    );
  }
}
