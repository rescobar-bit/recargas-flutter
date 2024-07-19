import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:recargas_beta2/data/recharges_data.dart';
import 'package:recargas_beta2/domain/screens/recharges/recharge_card.dart';
import 'package:recargas_beta2/domain/screens/recharges/recharge_details.dart';
import 'package:recargas_beta2/domain/screens/recharges/text_icon_card.dart';
import 'package:recargas_beta2/domain/widgets/bottom_sheet_filters.dart';

class ReportsIndex extends StatefulWidget {
  const ReportsIndex({
    super.key
  });

  @override
  State < ReportsIndex > createState() => _ReportsIndexState();
}

class _ReportsIndexState extends State <ReportsIndex> {
  String currentStatus = 'all';
  String currentPeriod = '';

  void changeStatus(String newStatus) => setState(() => currentStatus = newStatus);
  void changePeriod(String newPeriod) => setState(() => currentPeriod = newPeriod);

  List<Map<String, String>> filterData(){
    return rechargesData.where((recharge) {
      bool filtered = false;
      if (recharge['status'] == currentStatus || currentStatus == 'all') {
        filtered = true;
      }
      if (currentPeriod=='lastThreeDays') {
        
      }
      return filtered;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> data = filterData();

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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextIconCard(
                label: 'Últimas recargs',
                icon: Icon(Icons.refresh_outlined),
              ),
            ),
            Column(
              children: data.map((recharge) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            RechargeDetails(
                              recharge: recharge,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: RechargeCard(
                            company: recharge['company'] !,
                            phoneNumber: recharge['phone_number'] !,
                            date: recharge['date'] !,
                            status: recharge['status'] !,
                            amount: recharge['amount'] !,
                          ),
                      ),
                    ),
                  ],
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}