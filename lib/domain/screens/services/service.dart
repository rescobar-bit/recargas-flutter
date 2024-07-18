import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:recargas_beta2/domain/widgets/card_select.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class Service extends StatefulWidget {
  const Service({super.key});

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  TextEditingController codeReference = TextEditingController();
  TextEditingController total = TextEditingController();

  @override
  void initState(){
    total = TextEditingController(text: '10');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: const Color.fromARGB(255, 46, 45, 45),
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
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: const Color.fromARGB(255, 46, 45, 45),
            child: FormBuilderTextField(
              controller: codeReference,
              style: const TextStyle(fontSize: 20),
              name: 'reference',
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Referencia',
                labelStyle: const TextStyle(fontSize: 20),
                suffixIcon: IconButton(
                  onPressed: () async {
                    String reference = await Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const SimpleBarcodeScannerPage(
                        appBarTitle: 'Escanea el QR',
                        cancelButtonText: 'Cancelar',
                        lineColor: "#0064FF",
                        centerTitle: true,
                      ),
                      ));
                      setState(()=> codeReference.text = (reference != '-1') ? reference : '');
                  }, 
                  icon: const Icon(Icons.qr_code_scanner),
                  color: Colors.blue,
                )
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required()
              ]),
            )
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: const Color.fromARGB(255, 46, 45, 45),
            child: FormBuilderTextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                double newTotal = 0;
                setState(() {
                  newTotal = 10 + ((value!.isNotEmpty) ? double.parse(value) : 0);
                  total.text = newTotal.toString();
                });
              },
              style: const TextStyle(fontSize: 20),
              name: 'totalAmount',
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Monto a pagar',
                labelStyle: TextStyle(fontSize: 20),
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required()
              ]),
            )
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: const Color.fromARGB(255, 46, 45, 45),
            child: FormBuilderTextField(
              enabled: false,
              initialValue: '10',
              style: const TextStyle(fontSize: 20),
              name: 'commission',
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Monto a pagar',
                labelStyle: TextStyle(fontSize: 20),
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required()
              ]),
            )
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: const Color.fromARGB(255, 46, 45, 45),
            child: FormBuilderTextField(
              controller: total,
              enabled: false,
              style: const TextStyle(fontSize: 20),
              name: 'commission',
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Monto a pagar',
                labelStyle: TextStyle(fontSize: 20, color: Colors.white),
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
                'Enviar',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ),
          )
        ],
      ),
    );
  }
}