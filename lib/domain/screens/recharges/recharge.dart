import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:recargas_beta2/domain/widgets/card_select.dart';

class Recharge extends StatelessWidget {
  const Recharge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Text(
                  '¡Hola, ',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'Tienda 00!',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Colors.grey.shade900,
            child: const CardSelect(
              hintText: 'Elige una compañia',
              label: 'Compañia',
              items: [
                DropdownMenuItem(
                  value: 'movistar',
                  child: Text('Movistar'),
                ),
                DropdownMenuItem(
                  value: 'telcel',
                  child: Text('Telcel'),
                ),
                DropdownMenuItem(
                  value: 'att',
                  child: Text('Att'),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Colors.grey.shade900,
            child: const CardSelect(
              hintText: 'Elige el monto',
              label: 'Monto',
              items: [
                DropdownMenuItem(
                  value: '10',
                  child: Text('10'),
                ),
                DropdownMenuItem(
                  value: '50',
                  child: Text('50'),
                ),
                DropdownMenuItem(
                  value: '100',
                  child: Text('100'),
                ),
                DropdownMenuItem(
                  value: '200',
                  child: Text('200'),
                ),
                DropdownMenuItem(
                  value: '500',
                  child: Text('500'),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Colors.grey.shade900,
            child: FormBuilderTextField(
              style: const TextStyle(fontSize: 20),
              name: 'number',
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Número de referencia',
                labelStyle: TextStyle(fontSize: 20),
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required()
              ]),
            )
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: TextButton(
              style: const ButtonStyle(
                backgroundColor:  WidgetStatePropertyAll(Color(0xFF448CFB))
              ),
              onPressed: () {
              },
              child: const Text(
                'Generar recarga',
                style: TextStyle(fontSize: 20),
              )
            ),
          )
        ],
      ),
    );
  }
}