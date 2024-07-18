import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:recargas_beta2/data/filters.dart';

class BottomSheetFilters extends StatefulWidget {
  final Icon icon;
  const BottomSheetFilters({
    required this.icon,
    super.key
  });

  @override
  State<BottomSheetFilters> createState() => _BottomSheetFiltersState();
}

class _BottomSheetFiltersState extends State<BottomSheetFilters> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
            showModalBottomSheet <void> (
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                          const Text(
                            'Filtros',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: FormBuilderDropdown(
                                decoration: const InputDecoration(
                                  hintText: 'Estatus',
                                  border: InputBorder.none
                                ),
                                items: statusFilter.map((status) {
                                    return DropdownMenuItem(
                                      value: status['value'],
                                      child: Text(status['label']!),
                                    );
                                }).toList(),
                                name: 'company',
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: FormBuilderDropdown(
                              decoration: const InputDecoration(
                                hintText: 'Periodo',
                                border: InputBorder.none
                              ),
                              items: periodFilter.map((period){
                                return DropdownMenuItem(
                                  value: period['value'],
                                  child: Text(period['label']!),
                                );
                              }).toList(),
                              name: 'company',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              color: Colors.blue,
                              width: double.infinity,
                              child: const Text('Aplicar'),
                            ),
                          ),          
                        ],
                      ),
                  ),
                );
              },
            );
          },
      child: widget.icon,
    );
  }
}