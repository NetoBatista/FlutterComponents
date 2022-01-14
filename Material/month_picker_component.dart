import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class MonthPickerComponent {
  MonthPickerComponent(BuildContext context, dynamic Function(DateTime) onConfirm){
    showMonthPicker(
        context: context,
        locale: const Locale('pt', 'BR'),
        lastDate: DateTime.now(),
        firstDate: DateTime.now().subtract(const Duration(days: 730)),
        initialDate: DateTime.now()).then((DateTime? value) {
          if(value != null){
              onConfirm(value);
        }});
  }

}