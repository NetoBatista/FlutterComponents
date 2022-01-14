import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MaterialAppComponent extends StatefulWidget {
  Widget homeWidget;
  MaterialAppComponent({Key? key, required this.homeWidget}) : super(key: key);

  @override
  _MaterialAppComponentState createState() => _MaterialAppComponentState();
}

class _MaterialAppComponentState extends State<MaterialAppComponent> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          title: applicationController.appName,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Colors.blue,
            visualDensity: VisualDensity.comfortable,
            brightness: value ? Brightness.dark : Brightness.light,
            toggleableActiveColor: Colors.blue,
            accentColor: Colors.blue,
            colorScheme: ColorScheme.fromSwatch(primaryColorDark: Colors.blue, primarySwatch: Colors.blue,brightness: Brightness.light, accentColor: Colors.blue),
          ),
          home: widget.homeWidget,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        supportedLocales: const [
          Locale('pt', 'BR')
        ],
      ).modular();
  }
}
