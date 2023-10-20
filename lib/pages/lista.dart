import 'package:flutter/material.dart';
import 'package:simulado2/styles/fonts.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Tela da Lista de Locais',
          style: TextStyle(
            fontSize: 18,
            fontFamily: Fonte.fonte,
          ),
        ),
      ),
    );
  }
}
