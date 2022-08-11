import 'package:flutter/material.dart';
import 'package:prescription_app/pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      theme: _prescriptionApp,
      home: const HomePage(),
    ),
  );
}

final ThemeData _prescriptionApp = _buildApp();

ThemeData _buildApp() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      colorScheme: base.colorScheme.copyWith(
          primary: const Color(0xFFF4D9DE),
          secondary: const Color(0xFF0A26AB)));
}
