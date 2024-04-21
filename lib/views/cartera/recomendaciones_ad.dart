// ignore_for_file: use_super_parameters, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'mockup_recomendaciones.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';

final Map<String, String> anuncioSeleccionado = seleccionarAnuncioAleatorio(datosAnuncios);

Map<String, String> seleccionarAnuncioAleatorio(List<Map<String, String>> datosAnuncios) {
  final random = Random();
  final index = random.nextInt(datosAnuncios.length);
  return datosAnuncios[index];
} // elije aleatoreamente que anuncio mostrar en pantalla



void _launchURL(String url) async {
  Uri uri = Uri.parse(url); // Convertir la cadena de URL a un objeto Uri
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'No se pudo abrir el enlace $url';
  }
}

class AnuncioWidget extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final IconData icono;
  final String url;

  const AnuncioWidget({
    Key? key,
    required this.titulo,
    required this.subtitulo,
    required this.icono,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(url);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Icon(icono), // muestra un icono a eleccion
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,  // muestra un titulo a eleccion
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    subtitulo,  // muestra un subtitulo a eleccion
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}