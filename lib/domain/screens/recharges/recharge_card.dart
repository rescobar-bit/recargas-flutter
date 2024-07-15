import 'package:flutter/material.dart';

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
    return SizedBox(
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
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: const Text(
                      'Éxito',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800
                      ),
                    ),
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