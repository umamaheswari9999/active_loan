import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'app.dart';
import 'di/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  runApp(const CustomerApp());
}






