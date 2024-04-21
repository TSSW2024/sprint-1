import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 20, 23, 56),
          title: Text('utem trading',style: TextStyle(color: Colors.white,),),
          actions: [
           IconButton(icon: ImageIcon(
            AssetImage('assets/arcticons_money-manager.png'),
            color: Colors.white,
            size: 36,
            ),
            onPressed:() {
              
            },
            ),
             SizedBox(width: 50),
            IconButton(icon: Icon(Icons.search, size:36 ),
            
            onPressed: (){
              //accion del boton del icono
            },
            ),
             SizedBox(width: 50),
            IconButton(icon: ImageIcon(
              AssetImage('assets/equipo.png'),
              size: 36,
            ),
            onPressed:(){
            //accion del boton del icono
            } ,)
          ],
        ),