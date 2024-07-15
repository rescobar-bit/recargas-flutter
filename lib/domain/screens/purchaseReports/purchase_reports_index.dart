import 'package:flutter/material.dart';

class PurchaseReportsIndex extends StatelessWidget {
  const PurchaseReportsIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Reportar compra'),
      ),
      body: const Center(
        child: Text('Reportes de compras'),
      ),
    );
  }
}