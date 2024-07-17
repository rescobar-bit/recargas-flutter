import 'package:flutter/material.dart';
import 'package:recargas_beta2/domain/widgets/card_select.dart';

class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Column(
        children: [
          Container(
            color: Colors.grey.shade900,
            child: const CardSelect(
              hintText: 'Elige un servicio',
              label: 'Servicio',
              items: [
                DropdownMenuItem(
                  value: 'cfe',
                  child: Text('CFE'),
                ),
                DropdownMenuItem(
                  value: 'xbox',
                  child: Text('Xbox live'),
                ),
                DropdownMenuItem(
                  value: 'totalplay',
                  child: Text('Totalplay'),
                )
              ],
            ),
          )
            
        ],
      ),
    );
  }
}