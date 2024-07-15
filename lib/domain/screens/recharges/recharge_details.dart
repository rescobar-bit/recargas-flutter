import 'package:flutter/material.dart';

class RechargeDetails extends StatelessWidget {
  final Map<String, String> recharge;
  const RechargeDetails({
    required this.recharge,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(recharge['amount']!),
            Text(recharge['company']!),
          ],
        ),
      ),
    );
  }
}