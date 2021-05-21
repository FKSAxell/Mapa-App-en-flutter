part of 'mapa_bloc.dart';

@immutable
class MapaState {
  final bool mapaListo;
  final bool dibujarRecorrido;
  final bool seguirUbicacion;
  //Polylines
  final Map<String, Polyline> polylines;

  final LatLng ubicacionCentral;

  MapaState({
    this.dibujarRecorrido = false,
    this.seguirUbicacion = false,
    this.mapaListo = false,
    this.ubicacionCentral,
    Map<String, Polyline> polylines,
  }) : this.polylines = polylines ?? new Map();

  MapaState copyWith(
          {bool mapaListo,
          bool dibujarRecorrido,
          bool seguirUbicacion,
          LatLng ubicacionCentral,
          Map<String, Polyline> polylines}) =>
      MapaState(
        mapaListo: mapaListo ?? this.mapaListo,
        seguirUbicacion: seguirUbicacion ?? this.seguirUbicacion,
        dibujarRecorrido: dibujarRecorrido ?? this.dibujarRecorrido,
        ubicacionCentral: ubicacionCentral ?? this.ubicacionCentral,
        polylines: polylines ?? this.polylines,
      );
}
