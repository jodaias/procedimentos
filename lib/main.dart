import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pdc/view/insert.view.dart';

import 'controller/insertcontroller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocators();
  runApp(MyApp());
}

//Injeção de Dependencias
void setupLocators() {
  GetIt.I.registerSingleton<InsertStore>(InsertStore());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Insert());
  }
}
