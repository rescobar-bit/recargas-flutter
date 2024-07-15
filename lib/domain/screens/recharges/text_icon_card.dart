import 'package:flutter/material.dart';

class TextIconCard extends StatelessWidget {
  final String label;
  final Icon icon;
  const TextIconCard({
    required this.label,
    required this.icon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 18),
        ),
        IconButton(
          color: Colors.blue,
          onPressed: () {
          },
          icon: icon
        )
      ],
    );
  }
}