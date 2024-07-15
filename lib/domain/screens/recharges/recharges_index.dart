import 'package:flutter/material.dart';
import 'package:recargas_beta2/domain/screens/recharges/history_recharges.dart';
import 'package:recargas_beta2/domain/screens/recharges/recharge.dart';

class RechargesIndex extends StatelessWidget {
  const RechargesIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Recharge(),
            HistoryRecharges()
          ],
        ),
      )
    );
  }
}