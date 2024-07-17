import 'package:flutter/material.dart';
import 'package:recargas_beta2/domain/screens/services/service.dart';

class ServicesIndex extends StatelessWidget {
  const ServicesIndex({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Service(),
              ],
            ),
          ),

        ],
      )
    );
  }
}