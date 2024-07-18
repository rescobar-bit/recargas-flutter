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

  void changeStatus(String newStatus) => setState(() => currentStatus = newStatus);
  void changePeriod(String newPeriod) => setState(() => currentPeriod = newPeriod);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reportes'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: BottomSheetFilters(
              icon: const Icon(Icons.filter_alt_sharp),
              changeStatus: changeStatus,
              changePeriod: changePeriod,
            ),
          )
        ],
      ),
      body: SizedBox(
        child: Column(
          children: [
            Text("Estatus: $currentStatus"),
            Text("Periodo: $currentPeriod"),
          ],
        ),
      ),
    );
  }
}