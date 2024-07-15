import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  final String title;
  final String subtitle;
  const DetailsCard({
    required this.title,
    required this.subtitle,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      color: Colors.grey.shade900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white38
            ),
          ),
          const SizedBox(height: 4,),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}