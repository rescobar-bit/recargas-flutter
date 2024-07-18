import 'package:flutter/material.dart';
import 'package:recargas_beta2/domain/widgets/bottom_sheet_filters.dart';

class ReportsIndex extends StatefulWidget {
  const ReportsIndex({
    super.key
  });

  @override
  State < ReportsIndex > createState() => _ReportsIndexState();
}

class _ReportsIndexState extends State <ReportsIndex> {
  String currentStatus = '';
  String currentPeriod = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reportes'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 14),
            child: BottomSheetFilters(icon: Icon(Icons.filter_alt_sharp)),
          )
        ],
      ),
      body: Container(),
    );
  }
}