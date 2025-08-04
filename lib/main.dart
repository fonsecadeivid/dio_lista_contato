import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'ui/ui.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
