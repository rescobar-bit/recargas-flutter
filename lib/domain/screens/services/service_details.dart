import 'package:flutter/material.dart';
import 'package:recargas_beta2/domain/screens/recharges/details_card.dart';

class ServiceDetails extends StatelessWidget {
  final Map<String, String> service;
  const ServiceDetails({
    required this.service,
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
                service['amount']!,
                style: const TextStyle(fontSize: 54),
              ),
              Text(
                service['company']!,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20,),
              DetailsCard(
                title: 'Referencia',
                subtitle: service['phone_number']!
              ),
              DetailsCard(
                title: 'Monto',
                subtitle: service['amount']!
              ),
              const DetailsCard(
                title: 'Comisión',
                subtitle: '\$0.00'
              ),
              DetailsCard(
                title: 'Total cobrado',
                subtitle: service['amount']!
              ),
              DetailsCard(
                title: 'Estatus',
                subtitle: service['status']!
              ),
              DetailsCard(
                title: 'Fecha',
                subtitle: service['date']!
              ),
            ],
          ),
        ),
      ),
    );
  }
}