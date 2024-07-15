import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CardSelect extends StatelessWidget {
  final String hintText;
  final List<DropdownMenuItem<dynamic>> items;
  final String label;

  const CardSelect({
    required this.hintText,
    required this.items,
    required this.label,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 20),
        ),
        SizedBox(
          width: 200,
          child: FormBuilderDropdown(
            decoration: InputDecoration(
              hintText: hintText,
                border: InputBorder.none
              ),
              items: items,
              name: 'company',
          ),
        )
      ],
    );
  }
}