import 'package:flutter/material.dart';

class RecomendacionWidget extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final IconData icono;

  RecomendacionWidget({
    required this.titulo,
    required this.subtitulo,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icono),
              SizedBox(width: 8.0),
              Text(
                titulo,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            subtitulo,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
