import 'package:flutter/material.dart';

class ReportsIndex extends StatefulWidget {
  const ReportsIndex({
    super.key
  });

  @override
  State < ReportsIndex > createState() => _ReportsIndexState();
}

class _ReportsIndexState extends State < ReportsIndex > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reportes'),
      ),
      body: const Center(
        child: Text('Reportes'),
      ),
    );
  }
}