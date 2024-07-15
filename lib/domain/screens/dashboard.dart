import 'package:flutter/material.dart';
import 'package:recargas_beta2/domain/navigation/bottom_tabs.dart';
import 'package:recargas_beta2/domain/navigation/drawer_tabs.dart';
import 'package:recargas_beta2/domain/screens/recharges/recharges_index.dart';
import 'package:recargas_beta2/domain/screens/services/services_index.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({
    super.key
  });

  @override
  State < Dashboard > createState() => _DashboardState();
}

class _DashboardState extends State < Dashboard > {
  int _currentIndex = 0;

  void _changeStep(int index) => setState(() => _currentIndex = index);

  final List <Widget> _pages = [
    const RechargesIndex(),
      const ServicesIndex()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF448CFB),
        title: const Text('Recargas'),
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu)
              );
            },
          ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomTabs(
        changeStep: _changeStep,
        currentIndex: _currentIndex,
      ),
      drawer: const DrawerTabs(),
    );
  }
}