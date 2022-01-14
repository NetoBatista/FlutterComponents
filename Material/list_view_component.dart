import 'package:flutter/material.dart';

class ListViewComponent extends StatelessWidget {
  List<Widget> listWidget;
  ListViewComponent({Key? key, required this.listWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.zero, children: listWidget,);
  }
}
