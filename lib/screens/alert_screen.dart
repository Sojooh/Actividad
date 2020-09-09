import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => abrirAlert(context),
          child: Text('Abrir Alert'),
        ),
      ),
    );
  }

  void abrirAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Alerta'),
        content: Text('Esto es una alerta'),
        actions: <Widget>[
          FlutterLogo(
            size: 30.0,
          ),
          FlatButton(
            child: Text('Cancelar'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
