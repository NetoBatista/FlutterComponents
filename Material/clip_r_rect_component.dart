import 'package:flutter/material.dart';

class ClipRRectComponent extends StatelessWidget {
  Widget child;
  BorderRadius? borderRadius;
  ClipRRectComponent({Key? key, required this.child, this.borderRadius }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(child: child, borderRadius: borderRadius,);
  }
}
