import 'package:flutter/material.dart';
import 'telas/tela_principal.dart'; // O caminho deve ser correto para o seu arquivo

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo com Duas Telas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaPrincipal(), // Tela inicial
    );
  }
}
