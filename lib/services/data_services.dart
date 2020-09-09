import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:widgets/models/data_model.dart';

class DataService {
  // esto es para poder leer el Json y dejarlo como una clase especifica
  Future<Data> cargarDatos() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map parsedJson = json.decode(resp);
    final data = Data.fromJson(parsedJson);
    return data;
  }
}
