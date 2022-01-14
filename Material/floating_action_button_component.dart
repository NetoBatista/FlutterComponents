import 'package:flutter/material.dart';

class FloatingActionButtonComponent extends StatelessWidget {
  void Function() onPress;
  Widget child;
  FloatingActionButtonComponent({Key? key, required this.onPress, required this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: onPress,child: child);
  }
}
