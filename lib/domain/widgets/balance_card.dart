import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String label;
  final String balance;
  
  const BalanceCard({
    required this.label,
    required this.balance,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 10),
      decoration: const BoxDecoration(
        color: Color(0XFF141118),
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 18),
          ),
          Row(
            children: [
              Text(
                balance,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(width: 6,),
              IconButton(
                onPressed: () {
                },
                icon: const Icon(Icons.refresh, color: Colors.blue,)
              )
            ],
          )
        ],
      ),
    );
  }
}