import 'package:flutter/material.dart';
import 'package:recargas_beta2/domain/screens/recharges/history_recharges.dart';
import 'package:recargas_beta2/domain/screens/recharges/recharge.dart';
import 'package:recargas_beta2/domain/widgets/balance_card.dart';

class RechargesIndex extends StatelessWidget {
  const RechargesIndex({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 60),
            child: Column(
              children: [
                Recharge(),
                HistoryRecharges(),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: BalanceCard(
                label: 'Saldo', 
                balance: '\$100.00'
              ),
            )
          )
        ],
      )
    );
  }
}