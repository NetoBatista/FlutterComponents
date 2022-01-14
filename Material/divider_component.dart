import 'package:flutter/material.dart';

class DividerComponent extends StatelessWidget {
  double? height;
  double? thickness;
  DividerComponent({Key? key, this.height, this.thickness}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(height: height, thickness: thickness);
  }
}
