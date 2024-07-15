import 'package:flutter/material.dart';
import 'package:recargas_beta2/domain/screens/auth/login.dart';
import 'package:recargas_beta2/domain/screens/purchaseReports/purchase_reports_index.dart';
import 'package:recargas_beta2/domain/screens/reports/reports_index.dart';

class DrawerTabs extends StatefulWidget {
  const DrawerTabs({
    super.key
  });

  @override
  State < DrawerTabs > createState() => _DrawerTabsState();
}

class _DrawerTabsState extends State < DrawerTabs > {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: < Widget > [
          DrawerHeader(
            child: Image.asset(
              'assets/images/logo.png',
              width: 200,
            )
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.money),
                    title: const Text('Recargas y servicios'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                ),
                ListTile(
                  leading: const Icon(Icons.document_scanner_rounded),
                    title: const Text('Reportes'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                            const ReportsIndex(), )
                        );
                      },
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart),
                    title: const Text('Reportar de recargas'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                            const PurchaseReportsIndex(), )
                        );
                      },
                )
              ],
            )
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>
                  const Login(), )
              );
            },
            child: Container(
              padding: const EdgeInsets.only(left: 10),
                height: 50,
                alignment: Alignment.centerLeft,
                color: Colors.black38,
                width: double.infinity,
                child: const Text('Cerrar sesión'),
            ),
          )
        ],
      ),
    );
  }
}