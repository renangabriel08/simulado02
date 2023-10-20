import 'package:flutter/material.dart';
import 'package:simulado2/pages/config.dart';
import 'package:simulado2/pages/lista.dart';
import 'package:simulado2/pages/mapa.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pg = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: pg, children: const [
        Mapa(),
        Lista(),
        Configs(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pg,
        onTap: (value) => setState(() {
          pg = value;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
      ),
    );
  }
}
