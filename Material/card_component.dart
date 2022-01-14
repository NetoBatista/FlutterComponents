import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  Widget child;
  CardComponent({ Key? key, required this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: child,
      elevation: 10,
    );
  }
}
