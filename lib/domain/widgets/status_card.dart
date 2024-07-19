import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  final String status;

  const StatusCard({
    required this.status,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        decoration: BoxDecoration(
          color: (status=='success') ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(4)
        ),
        child: Text(
          (status=='success') ? 'Éxito' : 'Error',
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800
          ),
        ),
    );
  }
}