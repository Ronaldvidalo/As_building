// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solicitud_de_tareas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SolicitudDeTareasRecord> _$solicitudDeTareasRecordSerializer =
    new _$SolicitudDeTareasRecordSerializer();

class _$SolicitudDeTareasRecordSerializer
    implements StructuredSerializer<SolicitudDeTareasRecord> {
  @override
  final Iterable<Type> types = const [
    SolicitudDeTareasRecord,
    _$SolicitudDeTareasRecord
  ];
  @override
  final String wireName = 'SolicitudDeTareasRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SolicitudDeTareasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombreDeTarea;
    if (value != null) {
      result
        ..add('nombre_de_tarea')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripcionDeTarea;
    if (value != null) {
      result
        ..add('descripcion_de_tarea')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ubicacionDeTarea;
    if (value != null) {
      result
        ..add('ubicacion_de_tarea')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.direccionDeTarea;
    if (value != null) {
      result
        ..add('direccion_de_tarea')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagenDeTarea;
    if (value != null) {
      result
        ..add('imagen_de_tarea')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fechaARealizarTarea;
    if (value != null) {
      result
        ..add('fecha_a_realizar_tarea')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.formaDePago;
    if (value != null) {
      result
        ..add('forma_de_pago')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.audioAclaratorio;
    if (value != null) {
      result
        ..add('audio_aclaratorio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.observacion;
    if (value != null) {
      result
        ..add('observacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  SolicitudDeTareasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SolicitudDeTareasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre_de_tarea':
          result.nombreDeTarea = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descripcion_de_tarea':
          result.descripcionDeTarea = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ubicacion_de_tarea':
          result.ubicacionDeTarea = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'direccion_de_tarea':
          result.direccionDeTarea = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagen_de_tarea':
          result.imagenDeTarea = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fecha_a_realizar_tarea':
          result.fechaARealizarTarea = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'forma_de_pago':
          result.formaDePago = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'audio_aclaratorio':
          result.audioAclaratorio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'observacion':
          result.observacion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$SolicitudDeTareasRecord extends SolicitudDeTareasRecord {
  @override
  final String? nombreDeTarea;
  @override
  final String? descripcionDeTarea;
  @override
  final LatLng? ubicacionDeTarea;
  @override
  final String? direccionDeTarea;
  @override
  final String? imagenDeTarea;
  @override
  final DateTime? fechaARealizarTarea;
  @override
  final String? formaDePago;
  @override
  final String? audioAclaratorio;
  @override
  final String? observacion;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SolicitudDeTareasRecord(
          [void Function(SolicitudDeTareasRecordBuilder)? updates]) =>
      (new SolicitudDeTareasRecordBuilder()..update(updates))._build();

  _$SolicitudDeTareasRecord._(
      {this.nombreDeTarea,
      this.descripcionDeTarea,
      this.ubicacionDeTarea,
      this.direccionDeTarea,
      this.imagenDeTarea,
      this.fechaARealizarTarea,
      this.formaDePago,
      this.audioAclaratorio,
      this.observacion,
      this.ffRef})
      : super._();

  @override
  SolicitudDeTareasRecord rebuild(
          void Function(SolicitudDeTareasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SolicitudDeTareasRecordBuilder toBuilder() =>
      new SolicitudDeTareasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SolicitudDeTareasRecord &&
        nombreDeTarea == other.nombreDeTarea &&
        descripcionDeTarea == other.descripcionDeTarea &&
        ubicacionDeTarea == other.ubicacionDeTarea &&
        direccionDeTarea == other.direccionDeTarea &&
        imagenDeTarea == other.imagenDeTarea &&
        fechaARealizarTarea == other.fechaARealizarTarea &&
        formaDePago == other.formaDePago &&
        audioAclaratorio == other.audioAclaratorio &&
        observacion == other.observacion &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombreDeTarea.hashCode);
    _$hash = $jc(_$hash, descripcionDeTarea.hashCode);
    _$hash = $jc(_$hash, ubicacionDeTarea.hashCode);
    _$hash = $jc(_$hash, direccionDeTarea.hashCode);
    _$hash = $jc(_$hash, imagenDeTarea.hashCode);
    _$hash = $jc(_$hash, fechaARealizarTarea.hashCode);
    _$hash = $jc(_$hash, formaDePago.hashCode);
    _$hash = $jc(_$hash, audioAclaratorio.hashCode);
    _$hash = $jc(_$hash, observacion.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SolicitudDeTareasRecord')
          ..add('nombreDeTarea', nombreDeTarea)
          ..add('descripcionDeTarea', descripcionDeTarea)
          ..add('ubicacionDeTarea', ubicacionDeTarea)
          ..add('direccionDeTarea', direccionDeTarea)
          ..add('imagenDeTarea', imagenDeTarea)
          ..add('fechaARealizarTarea', fechaARealizarTarea)
          ..add('formaDePago', formaDePago)
          ..add('audioAclaratorio', audioAclaratorio)
          ..add('observacion', observacion)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SolicitudDeTareasRecordBuilder
    implements
        Builder<SolicitudDeTareasRecord, SolicitudDeTareasRecordBuilder> {
  _$SolicitudDeTareasRecord? _$v;

  String? _nombreDeTarea;
  String? get nombreDeTarea => _$this._nombreDeTarea;
  set nombreDeTarea(String? nombreDeTarea) =>
      _$this._nombreDeTarea = nombreDeTarea;

  String? _descripcionDeTarea;
  String? get descripcionDeTarea => _$this._descripcionDeTarea;
  set descripcionDeTarea(String? descripcionDeTarea) =>
      _$this._descripcionDeTarea = descripcionDeTarea;

  LatLng? _ubicacionDeTarea;
  LatLng? get ubicacionDeTarea => _$this._ubicacionDeTarea;
  set ubicacionDeTarea(LatLng? ubicacionDeTarea) =>
      _$this._ubicacionDeTarea = ubicacionDeTarea;

  String? _direccionDeTarea;
  String? get direccionDeTarea => _$this._direccionDeTarea;
  set direccionDeTarea(String? direccionDeTarea) =>
      _$this._direccionDeTarea = direccionDeTarea;

  String? _imagenDeTarea;
  String? get imagenDeTarea => _$this._imagenDeTarea;
  set imagenDeTarea(String? imagenDeTarea) =>
      _$this._imagenDeTarea = imagenDeTarea;

  DateTime? _fechaARealizarTarea;
  DateTime? get fechaARealizarTarea => _$this._fechaARealizarTarea;
  set fechaARealizarTarea(DateTime? fechaARealizarTarea) =>
      _$this._fechaARealizarTarea = fechaARealizarTarea;

  String? _formaDePago;
  String? get formaDePago => _$this._formaDePago;
  set formaDePago(String? formaDePago) => _$this._formaDePago = formaDePago;

  String? _audioAclaratorio;
  String? get audioAclaratorio => _$this._audioAclaratorio;
  set audioAclaratorio(String? audioAclaratorio) =>
      _$this._audioAclaratorio = audioAclaratorio;

  String? _observacion;
  String? get observacion => _$this._observacion;
  set observacion(String? observacion) => _$this._observacion = observacion;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SolicitudDeTareasRecordBuilder() {
    SolicitudDeTareasRecord._initializeBuilder(this);
  }

  SolicitudDeTareasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreDeTarea = $v.nombreDeTarea;
      _descripcionDeTarea = $v.descripcionDeTarea;
      _ubicacionDeTarea = $v.ubicacionDeTarea;
      _direccionDeTarea = $v.direccionDeTarea;
      _imagenDeTarea = $v.imagenDeTarea;
      _fechaARealizarTarea = $v.fechaARealizarTarea;
      _formaDePago = $v.formaDePago;
      _audioAclaratorio = $v.audioAclaratorio;
      _observacion = $v.observacion;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SolicitudDeTareasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SolicitudDeTareasRecord;
  }

  @override
  void update(void Function(SolicitudDeTareasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SolicitudDeTareasRecord build() => _build();

  _$SolicitudDeTareasRecord _build() {
    final _$result = _$v ??
        new _$SolicitudDeTareasRecord._(
            nombreDeTarea: nombreDeTarea,
            descripcionDeTarea: descripcionDeTarea,
            ubicacionDeTarea: ubicacionDeTarea,
            direccionDeTarea: direccionDeTarea,
            imagenDeTarea: imagenDeTarea,
            fechaARealizarTarea: fechaARealizarTarea,
            formaDePago: formaDePago,
            audioAclaratorio: audioAclaratorio,
            observacion: observacion,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
