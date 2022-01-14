import 'package:flutter/material.dart';

class StackComponent extends StatelessWidget {
  List<Widget> children;
  AlignmentGeometry? alignmentGeometry;
  StackComponent({Key? key, required this.children, this.alignmentGeometry }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: children, alignment: alignmentGeometry ?? AlignmentDirectional.topStart);
  }
}
