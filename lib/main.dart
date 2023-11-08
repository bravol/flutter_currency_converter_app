import 'package:currency_converter_app/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MATERIAL design created by google
//CUPERTINO design created by apple

// 3 state widdgets
//statelessWidget
//statefullWidget
//inheritedWidget

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConverterMaterialPage());
  }
}
