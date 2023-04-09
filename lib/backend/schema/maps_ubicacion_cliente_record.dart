import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'maps_ubicacion_cliente_record.g.dart';

abstract class MapsUbicacionClienteRecord
    implements
        Built<MapsUbicacionClienteRecord, MapsUbicacionClienteRecordBuilder> {
  static Serializer<MapsUbicacionClienteRecord> get serializer =>
      _$mapsUbicacionClienteRecordSerializer;

  @BuiltValueField(wireName: 'user_location')
  LatLng? get userLocation;

  @BuiltValueField(wireName: 'use_uid')
  String? get useUid;

  @BuiltValueField(wireName: 'adress_obra')
  String? get adressObra;

  @BuiltValueField(wireName: 'adres_operario')
  String? get adresOperario;

  @BuiltValueField(wireName: 'operario_uid')
  String? get operarioUid;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  @BuiltValueField(wireName: 'operio_name')
  String? get operioName;

  @BuiltValueField(wireName: 'is_operario_assingned')
  bool? get isOperarioAssingned;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MapsUbicacionClienteRecordBuilder builder) =>
      builder
        ..useUid = ''
        ..adressObra = ''
        ..adresOperario = ''
        ..operarioUid = ''
        ..userName = ''
        ..operioName = ''
        ..isOperarioAssingned = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('maps_ubicacion_cliente');

  static Stream<MapsUbicacionClienteRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MapsUbicacionClienteRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MapsUbicacionClienteRecord._();
  factory MapsUbicacionClienteRecord(
          [void Function(MapsUbicacionClienteRecordBuilder) updates]) =
      _$MapsUbicacionClienteRecord;

  static MapsUbicacionClienteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMapsUbicacionClienteRecordData({
  LatLng? userLocation,
  String? useUid,
  String? adressObra,
  String? adresOperario,
  String? operarioUid,
  String? userName,
  String? operioName,
  bool? isOperarioAssingned,
}) {
  final firestoreData = serializers.toFirestore(
    MapsUbicacionClienteRecord.serializer,
    MapsUbicacionClienteRecord(
      (m) => m
        ..userLocation = userLocation
        ..useUid = useUid
        ..adressObra = adressObra
        ..adresOperario = adresOperario
        ..operarioUid = operarioUid
        ..userName = userName
        ..operioName = operioName
        ..isOperarioAssingned = isOperarioAssingned,
    ),
  );

  return firestoreData;
}
