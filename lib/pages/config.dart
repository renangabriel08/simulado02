import 'package:flutter/material.dart';
import 'package:simulado2/styles/fonts.dart';

class Configs extends StatelessWidget {
  const Configs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Tela da Lista de Configurações',
          style: TextStyle(
            fontSize: 18,
            fontFamily: Fonte.fonte,
          ),
        ),
      ),
    );
  }
}
