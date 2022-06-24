import 'package:flutter/material.dart';
import './screens/login.dart';
import './screens/cadastro.dart';
import '/screens/lista.dart';
import './screens/novaReceitaD.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.pink[50]),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Login(),
        '/home': (context) => Lista(),
        '/cadastro': (context) => Cadastro(),
        '/novaReceitaD': (context) => NovaReceita(),
      },
    );
  }
}
