import 'package:flutter/material.dart';

class IgnorePointerComponent extends StatelessWidget {
  Widget child;
  IgnorePointerComponent({ Key? key, required this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(child: child);
  }
}