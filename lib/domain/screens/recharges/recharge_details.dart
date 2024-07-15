import 'package:flutter/material.dart';
import 'package:recargas_beta2/domain/screens/recharges/details_card.dart';

class RechargeDetails extends StatelessWidget {
  final Map<String, String> recharge;
  const RechargeDetails({
    required this.recharge,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles'),
        backgroundColor: const Color(0xFF448CFB),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Center(
          child: Column(
            children: [
              Text(
                recharge['amount']!,
                style: const TextStyle(fontSize: 54),
              ),
              Text(
                recharge['company']!,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20,),
              DetailsCard(
                title: 'Referencia',
                subtitle: recharge['phone_number']!
              ),
              DetailsCard(
                title: 'Monto',
                subtitle: recharge['amount']!
              ),
              const DetailsCard(
                title: 'Comisión',
                subtitle: '\$0.00'
              ),
              DetailsCard(
                title: 'Total cobrado',
                subtitle: recharge['amount']!
              ),
              DetailsCard(
                title: 'Estatus',
                subtitle: recharge['status']!
              ),
              DetailsCard(
                title: 'Fecha',
                subtitle: recharge['date']!
              ),
            ],
          ),
        ),
      ),
    );
  }
}