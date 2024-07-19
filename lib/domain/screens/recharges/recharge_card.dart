import 'package:flutter/material.dart';
import 'package:recargas_beta2/domain/widgets/status_card.dart';

class RechargeCard extends StatelessWidget {
  final String company;
  final String phoneNumber;
  final String date;
  final String status;
  final String amount;

  const RechargeCard({
    required this.company,
    required this.phoneNumber,
    required this.date,
    required this.status,
    required this.amount,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                company,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                phoneNumber,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                date,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8, ),
                StatusCard(
                  status: status,
                )
            ],
          ),
          Text(
            amount,
            style: const TextStyle(fontSize: 20),
          )
        ],
      )
    );
  }
}