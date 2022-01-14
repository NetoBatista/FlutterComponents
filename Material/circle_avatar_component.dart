import 'package:flutter/material.dart';

class CircleAvatarComponent extends StatelessWidget {
  double? radius;
  Color? backgroundColor;
  CircleAvatarComponent({Key? key, this.radius, this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
    );
  }
}
