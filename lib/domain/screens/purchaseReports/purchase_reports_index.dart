import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PurchaseReportsIndex extends StatelessWidget {
  const PurchaseReportsIndex({super.key});

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('EEEE, MMM d, yyyy', 'es_ES').format(DateTime.now());
    return Scaffold(
       appBar: AppBar(
        title: const Text('Reportar compra'),
      ),
      body: Center(
        child: Text(formattedDate),
      ),
    );
  }
}