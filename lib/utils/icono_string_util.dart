import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  // esta carpeta es para asigarle el icono de la izquiera a nuestros items
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  //agregar a medida que sea necesario
};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono]);
}
