// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timefield_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TimefieldRecord> _$timefieldRecordSerializer =
    new _$TimefieldRecordSerializer();

class _$TimefieldRecordSerializer
    implements StructuredSerializer<TimefieldRecord> {
  @override
  final Iterable<Type> types = const [TimefieldRecord, _$TimefieldRecord];
  @override
  final String wireName = 'TimefieldRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TimefieldRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
  TimefieldRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimefieldRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
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

class _$TimefieldRecord extends TimefieldRecord {
  @override
  final String? name;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TimefieldRecord([void Function(TimefieldRecordBuilder)? updates]) =>
      (new TimefieldRecordBuilder()..update(updates))._build();

  _$TimefieldRecord._({this.name, this.ffRef}) : super._();

  @override
  TimefieldRecord rebuild(void Function(TimefieldRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimefieldRecordBuilder toBuilder() =>
      new TimefieldRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimefieldRecord &&
        name == other.name &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimefieldRecord')
          ..add('name', name)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TimefieldRecordBuilder
    implements Builder<TimefieldRecord, TimefieldRecordBuilder> {
  _$TimefieldRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TimefieldRecordBuilder() {
    TimefieldRecord._initializeBuilder(this);
  }

  TimefieldRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimefieldRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimefieldRecord;
  }

  @override
  void update(void Function(TimefieldRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimefieldRecord build() => _build();

  _$TimefieldRecord _build() {
    final _$result = _$v ?? new _$TimefieldRecord._(name: name, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
