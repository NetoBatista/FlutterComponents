import 'package:flutter/material.dart';

class CheckBoxComponent extends StatelessWidget {
  void Function(bool?) onChanged;
  bool value;
  CheckBoxComponent({Key? key, required this.onChanged, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(onChanged: onChanged, value: value);
  }
}
