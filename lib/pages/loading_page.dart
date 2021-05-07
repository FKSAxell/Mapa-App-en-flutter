import 'package:flutter/material.dart';
import 'package:mapa_app/helpers/helpers.dart';
import 'package:mapa_app/pages/acceso_gps_page.dart';
import 'package:mapa_app/pages/mapa_page.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: this.checkGpsLocation(context),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        },
      ),
    );
  }

  Future checkGpsLocation(BuildContext context) async {
    //TODO: VERIFICAR SI TENGO PERMISOS
    //TODO: VERIFICAR SI ESTÁ EL GPS ACTIVO
    await Future.delayed(Duration(milliseconds: 100));

    Navigator.pushReplacement(
        context, navegarMapaFadeIn(context, AccesoGpsPage()));
    // Navigator.pushReplacement(context, navegarMapaFadeIn(context, MapaPage()));
  }
}
