import 'package:flutter/material.dart';

class DropDownComponent extends StatelessWidget {
  List<DropdownMenuItem<dynamic>> items;
  Function(dynamic)? onChanged;
  dynamic value;

  DropDownComponent({Key? key, required this.items, required this.onChanged, this.value }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton(items: items,
                          onChanged: onChanged,
                          value: value,
                          underline: ContainerComponent(
                            height: 1,
                            color: Colors.grey,
                          ),
                          elevation: 16,
                          iconSize: 24);
  }
}
