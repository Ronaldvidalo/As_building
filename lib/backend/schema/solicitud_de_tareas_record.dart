import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'solicitud_de_tareas_record.g.dart';

abstract class SolicitudDeTareasRecord
    implements Built<SolicitudDeTareasRecord, SolicitudDeTareasRecordBuilder> {
  static Serializer<SolicitudDeTareasRecord> get serializer =>
      _$solicitudDeTareasRecordSerializer;

  @BuiltValueField(wireName: 'nombre_de_tarea')
  String? get nombreDeTarea;

  @BuiltValueField(wireName: 'descripcion_de_tarea')
  String? get descripcionDeTarea;

  @BuiltValueField(wireName: 'ubicacion_de_tarea')
  LatLng? get ubicacionDeTarea;

  @BuiltValueField(wireName: 'direccion_de_tarea')
  String? get direccionDeTarea;

  @BuiltValueField(wireName: 'imagen_de_tarea')
  String? get imagenDeTarea;

  @BuiltValueField(wireName: 'fecha_a_realizar_tarea')
  DateTime? get fechaARealizarTarea;

  @BuiltValueField(wireName: 'forma_de_pago')
  String? get formaDePago;

  @BuiltValueField(wireName: 'audio_aclaratorio')
  String? get audioAclaratorio;

  String? get observacion;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SolicitudDeTareasRecordBuilder builder) =>
      builder
        ..nombreDeTarea = ''
        ..descripcionDeTarea = ''
        ..direccionDeTarea = ''
        ..imagenDeTarea = ''
        ..formaDePago = ''
        ..audioAclaratorio = ''
        ..observacion = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('solicitud_de_tareas');

  static Stream<SolicitudDeTareasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SolicitudDeTareasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SolicitudDeTareasRecord._();
  factory SolicitudDeTareasRecord(
          [void Function(SolicitudDeTareasRecordBuilder) updates]) =
      _$SolicitudDeTareasRecord;

  static SolicitudDeTareasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSolicitudDeTareasRecordData({
  String? nombreDeTarea,
  String? descripcionDeTarea,
  LatLng? ubicacionDeTarea,
  String? direccionDeTarea,
  String? imagenDeTarea,
  DateTime? fechaARealizarTarea,
  String? formaDePago,
  String? audioAclaratorio,
  String? observacion,
}) {
  final firestoreData = serializers.toFirestore(
    SolicitudDeTareasRecord.serializer,
    SolicitudDeTareasRecord(
      (s) => s
        ..nombreDeTarea = nombreDeTarea
        ..descripcionDeTarea = descripcionDeTarea
        ..ubicacionDeTarea = ubicacionDeTarea
        ..direccionDeTarea = direccionDeTarea
        ..imagenDeTarea = imagenDeTarea
        ..fechaARealizarTarea = fechaARealizarTarea
        ..formaDePago = formaDePago
        ..audioAclaratorio = audioAclaratorio
        ..observacion = observacion,
    ),
  );

  return firestoreData;
}
