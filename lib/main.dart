import 'package:flutter/material.dart';
import 'package:widgets/screens/alert_screen.dart';
import 'package:widgets/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Flutter',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) =>
            HomeScreen(), // Esta es nuestra primer ruta no nuetras app, obviamente si queremos crear mas, debemos agregar hacia abajo de la misma manera, cambiando el nombre o sea el '/' y el HomeScreen por el que corresponda
        'alert': (BuildContext context) => AlertScreen(),
      },
      onGenerateRoute: (RouteSettings settings) {
        // con este metodo lo que hacemos es que como no hemos definido las otra rutas de nuestro item, la presionar las otras las envie todas a la de alertas
        return MaterialPageRoute(builder: (context) => AlertScreen());
      },
    );
  }
}
