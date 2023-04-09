// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiciosRecord> _$serviciosRecordSerializer =
    new _$ServiciosRecordSerializer();

class _$ServiciosRecordSerializer
    implements StructuredSerializer<ServiciosRecord> {
  @override
  final Iterable<Type> types = const [ServiciosRecord, _$ServiciosRecord];
  @override
  final String wireName = 'ServiciosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ServiciosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.industry;
    if (value != null) {
      result
        ..add('industry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.businessName;
    if (value != null) {
      result
        ..add('business_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('start_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('end_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ServiciosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiciosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'industry':
          result.industry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'business_name':
          result.businessName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'start_date':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'end_date':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$ServiciosRecord extends ServiciosRecord {
  @override
  final String? industry;
  @override
  final String? businessName;
  @override
  final DateTime? startDate;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? duration;
  @override
  final DateTime? createdAt;
  @override
  final String? email;
  @override
  final String? photoUrl;
  @override
  final DateTime? createdTime;
  @override
  final DateTime? endDate;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ServiciosRecord([void Function(ServiciosRecordBuilder)? updates]) =>
      (new ServiciosRecordBuilder()..update(updates))._build();

  _$ServiciosRecord._(
      {this.industry,
      this.businessName,
      this.startDate,
      this.title,
      this.description,
      this.duration,
      this.createdAt,
      this.email,
      this.photoUrl,
      this.createdTime,
      this.endDate,
      this.ffRef})
      : super._();

  @override
  ServiciosRecord rebuild(void Function(ServiciosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiciosRecordBuilder toBuilder() =>
      new ServiciosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiciosRecord &&
        industry == other.industry &&
        businessName == other.businessName &&
        startDate == other.startDate &&
        title == other.title &&
        description == other.description &&
        duration == other.duration &&
        createdAt == other.createdAt &&
        email == other.email &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        endDate == other.endDate &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, industry.hashCode);
    _$hash = $jc(_$hash, businessName.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiciosRecord')
          ..add('industry', industry)
          ..add('businessName', businessName)
          ..add('startDate', startDate)
          ..add('title', title)
          ..add('description', description)
          ..add('duration', duration)
          ..add('createdAt', createdAt)
          ..add('email', email)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('endDate', endDate)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ServiciosRecordBuilder
    implements Builder<ServiciosRecord, ServiciosRecordBuilder> {
  _$ServiciosRecord? _$v;

  String? _industry;
  String? get industry => _$this._industry;
  set industry(String? industry) => _$this._industry = industry;

  String? _businessName;
  String? get businessName => _$this._businessName;
  set businessName(String? businessName) => _$this._businessName = businessName;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ServiciosRecordBuilder() {
    ServiciosRecord._initializeBuilder(this);
  }

  ServiciosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _industry = $v.industry;
      _businessName = $v.businessName;
      _startDate = $v.startDate;
      _title = $v.title;
      _description = $v.description;
      _duration = $v.duration;
      _createdAt = $v.createdAt;
      _email = $v.email;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _endDate = $v.endDate;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiciosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiciosRecord;
  }

  @override
  void update(void Function(ServiciosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiciosRecord build() => _build();

  _$ServiciosRecord _build() {
    final _$result = _$v ??
        new _$ServiciosRecord._(
            industry: industry,
            businessName: businessName,
            startDate: startDate,
            title: title,
            description: description,
            duration: duration,
            createdAt: createdAt,
            email: email,
            photoUrl: photoUrl,
            createdTime: createdTime,
            endDate: endDate,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
