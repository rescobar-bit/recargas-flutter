import 'package:flutter/material.dart';
import 'package:recargas_beta2/domain/widgets/balance_card.dart';

class ServicesIndex extends StatelessWidget {
  const ServicesIndex({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [

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
                balance: '\$250.00'
              ),
            )
          )
        ],
      )
    );
  }
}