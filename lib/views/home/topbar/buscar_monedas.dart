
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:"buscar monedas",
      home: Buscar_monedas(),
    );
  }
}
class Buscar_monedas extends StatefulWidget {
  const Buscar_monedas({super.key});

  @override
  State<Buscar_monedas> createState() => _Buscar_monedasState();
}

class _Buscar_monedasState extends State<Buscar_monedas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(child: Text("buscador de monedas"),),
    );
  }
}