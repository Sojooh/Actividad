import 'package:flutter/material.dart';
import 'package:widgets/models/data_model.dart';
import 'package:widgets/services/data_services.dart';
import 'package:widgets/utils/icono_string_util.dart'; // atajo: importm + enter

class HomeScreen extends StatelessWidget {
  // atajo para crear un StateLessWidget es stless + tabulador
  final DataService data = DataService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets'),
        centerTitle: true, // con esto centramos el nombre del title
      ),
      body: FutureBuilder(
        future: data.cargarDatos(),
        builder: (context, AsyncSnapshot<Data> snapshot) {
          if (snapshot.hasData) {
            return ListView(
              // El listView me permite hacer scroll, esto quiere decir que si tengo muchos elemntos en mi hombrescreen o donde sea, poder bajar y visualizar los que este abajo
              children: _crearLista(snapshot.data, context),
            );
          } else {
            return Center(
                child:
                    CircularProgressIndicator()); // si  no se cargan los datos, lanzara un circulo de cargando
          }
        },
      ),
    );
  }

  List<Widget> _crearLista(Data data, BuildContext context) {
    final List<Widget> items = [];
    data.rutas.forEach((item) {
      final widgetTemp = ListTile(
        title: Text(item.texto),
        leading: getIcon(item
            .icon), // el leaging es un elemento que va al lado izquierdo de nuestro Listile, para asignarle un icono lo mandamos a llamar de nuestra carpeta o mas bien archivo en utils (icono_string)
        trailing: Icon(Icons
            .keyboard_arrow_right), // el trailling es un elemento que va al lado derecho de nuestro Listile
        onTap: () => Navigator.pushNamed(context,
            item.ruta), // con esto defino que al presionar nuestra opcion, navegemos hacia donde queremos que nos lleve nuestra app
      );
      items.add(
          widgetTemp); // con esto finalmente teminamos de agregar nuestros Widget de items a nuestra app, que se va visualizar en nuestro telefono
    });
    return items; // por ultimo retornamos nuestros items
  }
}
