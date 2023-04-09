// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorias_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriasRecord> _$categoriasRecordSerializer =
    new _$CategoriasRecordSerializer();

class _$CategoriasRecordSerializer
    implements StructuredSerializer<CategoriasRecord> {
  @override
  final Iterable<Type> types = const [CategoriasRecord, _$CategoriasRecord];
  @override
  final String wireName = 'CategoriasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CategoriasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.plomeria;
    if (value != null) {
      result
        ..add('PLOMERIA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gasista;
    if (value != null) {
      result
        ..add('GASISTA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.carpinteria;
    if (value != null) {
      result
        ..add('CARPINTERIA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pintor;
    if (value != null) {
      result
        ..add('PINTOR')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.albanil;
    if (value != null) {
      result
        ..add('ALBANIL')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.electricista;
    if (value != null) {
      result
        ..add('ELECTRICISTA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refrigeracion;
    if (value != null) {
      result
        ..add('REFRIGERACION')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.arquitecturaYConstruccion;
    if (value != null) {
      result
        ..add('ARQUITECTURA_Y_CONSTRUCCION')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tecnicos;
    if (value != null) {
      result
        ..add('TECNICOS')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jardinero;
    if (value != null) {
      result
        ..add('JARDINERO')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.seguridad;
    if (value != null) {
      result
        ..add('SEGURIDAD')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.decoracion;
    if (value != null) {
      result
        ..add('DECORACION')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mudanzaYFletes;
    if (value != null) {
      result
        ..add('MUDANZA_Y_FLETES')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.herreria;
    if (value != null) {
      result
        ..add('HERRERIA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cerrajeria;
    if (value != null) {
      result
        ..add('CERRAJERIA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.limpieza;
    if (value != null) {
      result
        ..add('LIMPIEZA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.controlDePlagas;
    if (value != null) {
      result
        ..add('CONTROL_DE_PLAGAS')
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
  CategoriasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'PLOMERIA':
          result.plomeria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'GASISTA':
          result.gasista = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CARPINTERIA':
          result.carpinteria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PINTOR':
          result.pintor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ALBANIL':
          result.albanil = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ELECTRICISTA':
          result.electricista = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'REFRIGERACION':
          result.refrigeracion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ARQUITECTURA_Y_CONSTRUCCION':
          result.arquitecturaYConstruccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TECNICOS':
          result.tecnicos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'JARDINERO':
          result.jardinero = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'SEGURIDAD':
          result.seguridad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DECORACION':
          result.decoracion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'MUDANZA_Y_FLETES':
          result.mudanzaYFletes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'HERRERIA':
          result.herreria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CERRAJERIA':
          result.cerrajeria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'LIMPIEZA':
          result.limpieza = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CONTROL_DE_PLAGAS':
          result.controlDePlagas = serializers.deserialize(value,
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

class _$CategoriasRecord extends CategoriasRecord {
  @override
  final String? plomeria;
  @override
  final String? gasista;
  @override
  final String? carpinteria;
  @override
  final String? pintor;
  @override
  final String? albanil;
  @override
  final String? electricista;
  @override
  final String? refrigeracion;
  @override
  final String? arquitecturaYConstruccion;
  @override
  final String? tecnicos;
  @override
  final String? jardinero;
  @override
  final String? seguridad;
  @override
  final String? decoracion;
  @override
  final String? mudanzaYFletes;
  @override
  final String? herreria;
  @override
  final String? cerrajeria;
  @override
  final String? limpieza;
  @override
  final String? controlDePlagas;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoriasRecord(
          [void Function(CategoriasRecordBuilder)? updates]) =>
      (new CategoriasRecordBuilder()..update(updates))._build();

  _$CategoriasRecord._(
      {this.plomeria,
      this.gasista,
      this.carpinteria,
      this.pintor,
      this.albanil,
      this.electricista,
      this.refrigeracion,
      this.arquitecturaYConstruccion,
      this.tecnicos,
      this.jardinero,
      this.seguridad,
      this.decoracion,
      this.mudanzaYFletes,
      this.herreria,
      this.cerrajeria,
      this.limpieza,
      this.controlDePlagas,
      this.ffRef})
      : super._();

  @override
  CategoriasRecord rebuild(void Function(CategoriasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriasRecordBuilder toBuilder() =>
      new CategoriasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriasRecord &&
        plomeria == other.plomeria &&
        gasista == other.gasista &&
        carpinteria == other.carpinteria &&
        pintor == other.pintor &&
        albanil == other.albanil &&
        electricista == other.electricista &&
        refrigeracion == other.refrigeracion &&
        arquitecturaYConstruccion == other.arquitecturaYConstruccion &&
        tecnicos == other.tecnicos &&
        jardinero == other.jardinero &&
        seguridad == other.seguridad &&
        decoracion == other.decoracion &&
        mudanzaYFletes == other.mudanzaYFletes &&
        herreria == other.herreria &&
        cerrajeria == other.cerrajeria &&
        limpieza == other.limpieza &&
        controlDePlagas == other.controlDePlagas &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, plomeria.hashCode);
    _$hash = $jc(_$hash, gasista.hashCode);
    _$hash = $jc(_$hash, carpinteria.hashCode);
    _$hash = $jc(_$hash, pintor.hashCode);
    _$hash = $jc(_$hash, albanil.hashCode);
    _$hash = $jc(_$hash, electricista.hashCode);
    _$hash = $jc(_$hash, refrigeracion.hashCode);
    _$hash = $jc(_$hash, arquitecturaYConstruccion.hashCode);
    _$hash = $jc(_$hash, tecnicos.hashCode);
    _$hash = $jc(_$hash, jardinero.hashCode);
    _$hash = $jc(_$hash, seguridad.hashCode);
    _$hash = $jc(_$hash, decoracion.hashCode);
    _$hash = $jc(_$hash, mudanzaYFletes.hashCode);
    _$hash = $jc(_$hash, herreria.hashCode);
    _$hash = $jc(_$hash, cerrajeria.hashCode);
    _$hash = $jc(_$hash, limpieza.hashCode);
    _$hash = $jc(_$hash, controlDePlagas.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoriasRecord')
          ..add('plomeria', plomeria)
          ..add('gasista', gasista)
          ..add('carpinteria', carpinteria)
          ..add('pintor', pintor)
          ..add('albanil', albanil)
          ..add('electricista', electricista)
          ..add('refrigeracion', refrigeracion)
          ..add('arquitecturaYConstruccion', arquitecturaYConstruccion)
          ..add('tecnicos', tecnicos)
          ..add('jardinero', jardinero)
          ..add('seguridad', seguridad)
          ..add('decoracion', decoracion)
          ..add('mudanzaYFletes', mudanzaYFletes)
          ..add('herreria', herreria)
          ..add('cerrajeria', cerrajeria)
          ..add('limpieza', limpieza)
          ..add('controlDePlagas', controlDePlagas)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoriasRecordBuilder
    implements Builder<CategoriasRecord, CategoriasRecordBuilder> {
  _$CategoriasRecord? _$v;

  String? _plomeria;
  String? get plomeria => _$this._plomeria;
  set plomeria(String? plomeria) => _$this._plomeria = plomeria;

  String? _gasista;
  String? get gasista => _$this._gasista;
  set gasista(String? gasista) => _$this._gasista = gasista;

  String? _carpinteria;
  String? get carpinteria => _$this._carpinteria;
  set carpinteria(String? carpinteria) => _$this._carpinteria = carpinteria;

  String? _pintor;
  String? get pintor => _$this._pintor;
  set pintor(String? pintor) => _$this._pintor = pintor;

  String? _albanil;
  String? get albanil => _$this._albanil;
  set albanil(String? albanil) => _$this._albanil = albanil;

  String? _electricista;
  String? get electricista => _$this._electricista;
  set electricista(String? electricista) => _$this._electricista = electricista;

  String? _refrigeracion;
  String? get refrigeracion => _$this._refrigeracion;
  set refrigeracion(String? refrigeracion) =>
      _$this._refrigeracion = refrigeracion;

  String? _arquitecturaYConstruccion;
  String? get arquitecturaYConstruccion => _$this._arquitecturaYConstruccion;
  set arquitecturaYConstruccion(String? arquitecturaYConstruccion) =>
      _$this._arquitecturaYConstruccion = arquitecturaYConstruccion;

  String? _tecnicos;
  String? get tecnicos => _$this._tecnicos;
  set tecnicos(String? tecnicos) => _$this._tecnicos = tecnicos;

  String? _jardinero;
  String? get jardinero => _$this._jardinero;
  set jardinero(String? jardinero) => _$this._jardinero = jardinero;

  String? _seguridad;
  String? get seguridad => _$this._seguridad;
  set seguridad(String? seguridad) => _$this._seguridad = seguridad;

  String? _decoracion;
  String? get decoracion => _$this._decoracion;
  set decoracion(String? decoracion) => _$this._decoracion = decoracion;

  String? _mudanzaYFletes;
  String? get mudanzaYFletes => _$this._mudanzaYFletes;
  set mudanzaYFletes(String? mudanzaYFletes) =>
      _$this._mudanzaYFletes = mudanzaYFletes;

  String? _herreria;
  String? get herreria => _$this._herreria;
  set herreria(String? herreria) => _$this._herreria = herreria;

  String? _cerrajeria;
  String? get cerrajeria => _$this._cerrajeria;
  set cerrajeria(String? cerrajeria) => _$this._cerrajeria = cerrajeria;

  String? _limpieza;
  String? get limpieza => _$this._limpieza;
  set limpieza(String? limpieza) => _$this._limpieza = limpieza;

  String? _controlDePlagas;
  String? get controlDePlagas => _$this._controlDePlagas;
  set controlDePlagas(String? controlDePlagas) =>
      _$this._controlDePlagas = controlDePlagas;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoriasRecordBuilder() {
    CategoriasRecord._initializeBuilder(this);
  }

  CategoriasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _plomeria = $v.plomeria;
      _gasista = $v.gasista;
      _carpinteria = $v.carpinteria;
      _pintor = $v.pintor;
      _albanil = $v.albanil;
      _electricista = $v.electricista;
      _refrigeracion = $v.refrigeracion;
      _arquitecturaYConstruccion = $v.arquitecturaYConstruccion;
      _tecnicos = $v.tecnicos;
      _jardinero = $v.jardinero;
      _seguridad = $v.seguridad;
      _decoracion = $v.decoracion;
      _mudanzaYFletes = $v.mudanzaYFletes;
      _herreria = $v.herreria;
      _cerrajeria = $v.cerrajeria;
      _limpieza = $v.limpieza;
      _controlDePlagas = $v.controlDePlagas;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriasRecord;
  }

  @override
  void update(void Function(CategoriasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriasRecord build() => _build();

  _$CategoriasRecord _build() {
    final _$result = _$v ??
        new _$CategoriasRecord._(
            plomeria: plomeria,
            gasista: gasista,
            carpinteria: carpinteria,
            pintor: pintor,
            albanil: albanil,
            electricista: electricista,
            refrigeracion: refrigeracion,
            arquitecturaYConstruccion: arquitecturaYConstruccion,
            tecnicos: tecnicos,
            jardinero: jardinero,
            seguridad: seguridad,
            decoracion: decoracion,
            mudanzaYFletes: mudanzaYFletes,
            herreria: herreria,
            cerrajeria: cerrajeria,
            limpieza: limpieza,
            controlDePlagas: controlDePlagas,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
