import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:recargas_beta2/config/theme/app_theme.dart';
import 'package:recargas_beta2/domain/screens/auth/login.dart';

void main(){
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    initializeDateFormatting('es_ES', null);
    return MaterialApp(
      theme: AppTheme().getTheme(),
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}