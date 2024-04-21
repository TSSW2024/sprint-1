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
      title:"acerca de nosotros",
      home: Acerca_de_nosotros(),
    );
  }
}
class Acerca_de_nosotros extends StatefulWidget {
  const Acerca_de_nosotros({super.key});

  @override
  State<Acerca_de_nosotros> createState() => _Acerca_de_nosotrosState();
}

class _Acerca_de_nosotrosState extends State<Acerca_de_nosotros> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
            body:
      Center(child: Text("Acerca de nosotros"),),
    );
  }
}