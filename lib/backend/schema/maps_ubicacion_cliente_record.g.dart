// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps_ubicacion_cliente_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MapsUbicacionClienteRecord> _$mapsUbicacionClienteRecordSerializer =
    new _$MapsUbicacionClienteRecordSerializer();

class _$MapsUbicacionClienteRecordSerializer
    implements StructuredSerializer<MapsUbicacionClienteRecord> {
  @override
  final Iterable<Type> types = const [
    MapsUbicacionClienteRecord,
    _$MapsUbicacionClienteRecord
  ];
  @override
  final String wireName = 'MapsUbicacionClienteRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MapsUbicacionClienteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userLocation;
    if (value != null) {
      result
        ..add('user_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.useUid;
    if (value != null) {
      result
        ..add('use_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adressObra;
    if (value != null) {
      result
        ..add('adress_obra')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adresOperario;
    if (value != null) {
      result
        ..add('adres_operario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.operarioUid;
    if (value != null) {
      result
        ..add('operario_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.operioName;
    if (value != null) {
      result
        ..add('operio_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isOperarioAssingned;
    if (value != null) {
      result
        ..add('is_operario_assingned')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  MapsUbicacionClienteRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MapsUbicacionClienteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_location':
          result.userLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'use_uid':
          result.useUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'adress_obra':
          result.adressObra = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'adres_operario':
          result.adresOperario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'operario_uid':
          result.operarioUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'operio_name':
          result.operioName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_operario_assingned':
          result.isOperarioAssingned = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$MapsUbicacionClienteRecord extends MapsUbicacionClienteRecord {
  @override
  final LatLng? userLocation;
  @override
  final String? useUid;
  @override
  final String? adressObra;
  @override
  final String? adresOperario;
  @override
  final String? operarioUid;
  @override
  final String? userName;
  @override
  final String? operioName;
  @override
  final bool? isOperarioAssingned;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MapsUbicacionClienteRecord(
          [void Function(MapsUbicacionClienteRecordBuilder)? updates]) =>
      (new MapsUbicacionClienteRecordBuilder()..update(updates))._build();

  _$MapsUbicacionClienteRecord._(
      {this.userLocation,
      this.useUid,
      this.adressObra,
      this.adresOperario,
      this.operarioUid,
      this.userName,
      this.operioName,
      this.isOperarioAssingned,
      this.ffRef})
      : super._();

  @override
  MapsUbicacionClienteRecord rebuild(
          void Function(MapsUbicacionClienteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapsUbicacionClienteRecordBuilder toBuilder() =>
      new MapsUbicacionClienteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapsUbicacionClienteRecord &&
        userLocation == other.userLocation &&
        useUid == other.useUid &&
        adressObra == other.adressObra &&
        adresOperario == other.adresOperario &&
        operarioUid == other.operarioUid &&
        userName == other.userName &&
        operioName == other.operioName &&
        isOperarioAssingned == other.isOperarioAssingned &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userLocation.hashCode);
    _$hash = $jc(_$hash, useUid.hashCode);
    _$hash = $jc(_$hash, adressObra.hashCode);
    _$hash = $jc(_$hash, adresOperario.hashCode);
    _$hash = $jc(_$hash, operarioUid.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, operioName.hashCode);
    _$hash = $jc(_$hash, isOperarioAssingned.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapsUbicacionClienteRecord')
          ..add('userLocation', userLocation)
          ..add('useUid', useUid)
          ..add('adressObra', adressObra)
          ..add('adresOperario', adresOperario)
          ..add('operarioUid', operarioUid)
          ..add('userName', userName)
          ..add('operioName', operioName)
          ..add('isOperarioAssingned', isOperarioAssingned)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MapsUbicacionClienteRecordBuilder
    implements
        Builder<MapsUbicacionClienteRecord, MapsUbicacionClienteRecordBuilder> {
  _$MapsUbicacionClienteRecord? _$v;

  LatLng? _userLocation;
  LatLng? get userLocation => _$this._userLocation;
  set userLocation(LatLng? userLocation) => _$this._userLocation = userLocation;

  String? _useUid;
  String? get useUid => _$this._useUid;
  set useUid(String? useUid) => _$this._useUid = useUid;

  String? _adressObra;
  String? get adressObra => _$this._adressObra;
  set adressObra(String? adressObra) => _$this._adressObra = adressObra;

  String? _adresOperario;
  String? get adresOperario => _$this._adresOperario;
  set adresOperario(String? adresOperario) =>
      _$this._adresOperario = adresOperario;

  String? _operarioUid;
  String? get operarioUid => _$this._operarioUid;
  set operarioUid(String? operarioUid) => _$this._operarioUid = operarioUid;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _operioName;
  String? get operioName => _$this._operioName;
  set operioName(String? operioName) => _$this._operioName = operioName;

  bool? _isOperarioAssingned;
  bool? get isOperarioAssingned => _$this._isOperarioAssingned;
  set isOperarioAssingned(bool? isOperarioAssingned) =>
      _$this._isOperarioAssingned = isOperarioAssingned;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MapsUbicacionClienteRecordBuilder() {
    MapsUbicacionClienteRecord._initializeBuilder(this);
  }

  MapsUbicacionClienteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userLocation = $v.userLocation;
      _useUid = $v.useUid;
      _adressObra = $v.adressObra;
      _adresOperario = $v.adresOperario;
      _operarioUid = $v.operarioUid;
      _userName = $v.userName;
      _operioName = $v.operioName;
      _isOperarioAssingned = $v.isOperarioAssingned;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapsUbicacionClienteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MapsUbicacionClienteRecord;
  }

  @override
  void update(void Function(MapsUbicacionClienteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapsUbicacionClienteRecord build() => _build();

  _$MapsUbicacionClienteRecord _build() {
    final _$result = _$v ??
        new _$MapsUbicacionClienteRecord._(
            userLocation: userLocation,
            useUid: useUid,
            adressObra: adressObra,
            adresOperario: adresOperario,
            operarioUid: operarioUid,
            userName: userName,
            operioName: operioName,
            isOperarioAssingned: isOperarioAssingned,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
