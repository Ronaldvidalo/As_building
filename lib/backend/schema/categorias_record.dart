import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categorias_record.g.dart';

abstract class CategoriasRecord
    implements Built<CategoriasRecord, CategoriasRecordBuilder> {
  static Serializer<CategoriasRecord> get serializer =>
      _$categoriasRecordSerializer;

  @BuiltValueField(wireName: 'PLOMERIA')
  String? get plomeria;

  @BuiltValueField(wireName: 'GASISTA')
  String? get gasista;

  @BuiltValueField(wireName: 'CARPINTERIA')
  String? get carpinteria;

  @BuiltValueField(wireName: 'PINTOR')
  String? get pintor;

  @BuiltValueField(wireName: 'ALBANIL')
  String? get albanil;

  @BuiltValueField(wireName: 'ELECTRICISTA')
  String? get electricista;

  @BuiltValueField(wireName: 'REFRIGERACION')
  String? get refrigeracion;

  @BuiltValueField(wireName: 'ARQUITECTURA_Y_CONSTRUCCION')
  String? get arquitecturaYConstruccion;

  @BuiltValueField(wireName: 'TECNICOS')
  String? get tecnicos;

  @BuiltValueField(wireName: 'JARDINERO')
  String? get jardinero;

  @BuiltValueField(wireName: 'SEGURIDAD')
  String? get seguridad;

  @BuiltValueField(wireName: 'DECORACION')
  String? get decoracion;

  @BuiltValueField(wireName: 'MUDANZA_Y_FLETES')
  String? get mudanzaYFletes;

  @BuiltValueField(wireName: 'HERRERIA')
  String? get herreria;

  @BuiltValueField(wireName: 'CERRAJERIA')
  String? get cerrajeria;

  @BuiltValueField(wireName: 'LIMPIEZA')
  String? get limpieza;

  @BuiltValueField(wireName: 'CONTROL_DE_PLAGAS')
  String? get controlDePlagas;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoriasRecordBuilder builder) => builder
    ..plomeria = ''
    ..gasista = ''
    ..carpinteria = ''
    ..pintor = ''
    ..albanil = ''
    ..electricista = ''
    ..refrigeracion = ''
    ..arquitecturaYConstruccion = ''
    ..tecnicos = ''
    ..jardinero = ''
    ..seguridad = ''
    ..decoracion = ''
    ..mudanzaYFletes = ''
    ..herreria = ''
    ..cerrajeria = ''
    ..limpieza = ''
    ..controlDePlagas = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categorias');

  static Stream<CategoriasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoriasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoriasRecord._();
  factory CategoriasRecord([void Function(CategoriasRecordBuilder) updates]) =
      _$CategoriasRecord;

  static CategoriasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoriasRecordData({
  String? plomeria,
  String? gasista,
  String? carpinteria,
  String? pintor,
  String? albanil,
  String? electricista,
  String? refrigeracion,
  String? arquitecturaYConstruccion,
  String? tecnicos,
  String? jardinero,
  String? seguridad,
  String? decoracion,
  String? mudanzaYFletes,
  String? herreria,
  String? cerrajeria,
  String? limpieza,
  String? controlDePlagas,
}) {
  final firestoreData = serializers.toFirestore(
    CategoriasRecord.serializer,
    CategoriasRecord(
      (c) => c
        ..plomeria = plomeria
        ..gasista = gasista
        ..carpinteria = carpinteria
        ..pintor = pintor
        ..albanil = albanil
        ..electricista = electricista
        ..refrigeracion = refrigeracion
        ..arquitecturaYConstruccion = arquitecturaYConstruccion
        ..tecnicos = tecnicos
        ..jardinero = jardinero
        ..seguridad = seguridad
        ..decoracion = decoracion
        ..mudanzaYFletes = mudanzaYFletes
        ..herreria = herreria
        ..cerrajeria = cerrajeria
        ..limpieza = limpieza
        ..controlDePlagas = controlDePlagas,
    ),
  );

  return firestoreData;
}
