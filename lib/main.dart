import 'package:flutter/material.dart';
import 'package:flutter_assessment/app.dart';
import 'package:flutter_assessment/injection_container.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const App());
}
