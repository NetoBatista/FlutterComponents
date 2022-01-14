import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ScaffoldComponent extends StatelessWidget {
  Widget body;
  bool appBar;
  Widget? drawer;
  String? titleAppBar;
  Widget? bottomNavigationBar;
  Widget? floatingActionButton;
  Color? appBarColor;
  ScaffoldComponent({Key? key, required this.body, required this.appBar, this.drawer, this.titleAppBar, this.bottomNavigationBar, this.floatingActionButton, this.appBarColor }) : super(key: key);
  ApplicationController applicationController = Modular.get<ApplicationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !appBar ? null : AppBarComponent(title: TextComponent(text: titleAppBar ?? applicationController.appName), color: appBarColor).build(),
      body: body,
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }
}
