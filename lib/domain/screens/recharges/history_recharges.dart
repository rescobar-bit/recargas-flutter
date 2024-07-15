import 'package:flutter/material.dart';
import 'package:recargas_beta2/data/recharges_data.dart';
import 'package:recargas_beta2/domain/screens/recharges/recharge_card.dart';
import 'package:recargas_beta2/domain/screens/recharges/recharge_details.dart';
import 'package:recargas_beta2/domain/screens/recharges/text_icon_card.dart';

class HistoryRecharges extends StatelessWidget {
  const HistoryRecharges({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              children: rechargesData.map((recharge) {
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
                    const SizedBox(height: 30, )
                  ],
                );
              }).toList(),
            )
        ],
      ),
    );
  }
}