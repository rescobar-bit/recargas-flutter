import 'package:flutter/material.dart';

class BottomTabs extends StatefulWidget {
  final ValueChanged<int>? changeStep;
  final int currentIndex;

  const BottomTabs({
    required this.currentIndex,
    required this.changeStep,
    super.key
  });

  @override
  State<BottomTabs> createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 30, left: 30, bottom: 20),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF448CFB),
              borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Transform.rotate(
                    angle: 3.14,
                    child: const Icon(Icons.compare_arrows),
                  ),
                  label: 'Recargas'
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_view_month_sharp),
                  label: 'Servicios'
                ),
              ],
              onTap: widget.changeStep,
              currentIndex: widget.currentIndex,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white54,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              type: BottomNavigationBarType.fixed,
            ),
          ),
        ),
    );
  }
}