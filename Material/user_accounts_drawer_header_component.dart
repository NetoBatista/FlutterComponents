import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UserAccountsDrawerHeaderComponent extends StatelessWidget {
  Widget accountEmail;
  Widget accountName;
  Widget? accountImage;
  UserAccountsDrawerHeaderComponent({Key? key, required this.accountEmail, required this.accountName, this.accountImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(accountEmail: accountEmail, accountName: accountName, currentAccountPicture: accountImage);
  }
}
