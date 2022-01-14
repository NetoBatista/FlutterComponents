import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  String accountName;
  String accountEmail;
  String? accountImage;
  List<Widget> widgetListOpions;
  CrossAxisAlignment crossAxisAlignment;
  EdgeInsetsGeometry? paddingOptions;
  DrawerComponent({Key? key, required this.accountName, required this.accountEmail, this.accountImage, required this.widgetListOpions, required this.crossAxisAlignment, this.paddingOptions }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget? accountImageWidget = accountImage == null ? null : ImageNetworkComponent(uri: accountImage.toString());
    return Drawer(
        child: ListViewComponent(listWidget: [
          UserAccountsDrawerHeaderComponent(accountName: TextComponent(text: accountName),
            accountEmail: TextComponent(text: accountEmail),
            accountImage: accountImageWidget),
          ContainerComponent(padding: paddingOptions, child: ColumnComponent(mainAxisAlignment: MainAxisAlignment.start,
                                                                             crossAxisAlignment: crossAxisAlignment,
                                                                              children: widgetListOpions))
      ])
    );
  }
}
