import 'package:flutter/material.dart';
import 'package:recargas_beta2/data/services_data.dart';
import 'package:recargas_beta2/domain/screens/recharges/recharge_card.dart';
import 'package:recargas_beta2/domain/screens/recharges/text_icon_card.dart';
import 'package:recargas_beta2/domain/screens/services/service_details.dart';

class HistoryServices extends StatelessWidget {
  const HistoryServices({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextIconCard(
                label: 'Últimas ventas',
                icon: Icon(Icons.refresh_outlined),
              ),
          ),
          Column(
              children: servicesData.map((service) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            ServiceDetails(
                              service: service
                            )
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: RechargeCard(
                            company: service['company'] !,
                            phoneNumber: service['phone_number'] !,
                            date: service['date'] !,
                            status: service['status'] !,
                            amount: service['amount'] !,
                          ),
                      ),
                    ),
                  ],
                );
              }).toList(),
            )
        ],
      ),
    );
  }
}