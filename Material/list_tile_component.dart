import 'package:flutter/material.dart';

class ListTileComponent extends StatelessWidget {
  Widget? leading;
  Widget? trailing;
  Widget title;
  Widget? subtitle;
  void Function()? onTap;
  ListTileComponent({Key? key, this.leading, this.trailing, this.onTap, required this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: leading,
      trailing: trailing,
      title: title,
      subtitle: subtitle,
      onTap: onTap,
    );
  }
}
