// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interestfield_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InterestfieldRecord> _$interestfieldRecordSerializer =
    new _$InterestfieldRecordSerializer();

class _$InterestfieldRecordSerializer
    implements StructuredSerializer<InterestfieldRecord> {
  @override
  final Iterable<Type> types = const [
    InterestfieldRecord,
    _$InterestfieldRecord
  ];
  @override
  final String wireName = 'InterestfieldRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, InterestfieldRecord object,
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
  InterestfieldRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InterestfieldRecordBuilder();

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

class _$InterestfieldRecord extends InterestfieldRecord {
  @override
  final String? name;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InterestfieldRecord(
          [void Function(InterestfieldRecordBuilder)? updates]) =>
      (new InterestfieldRecordBuilder()..update(updates))._build();

  _$InterestfieldRecord._({this.name, this.ffRef}) : super._();

  @override
  InterestfieldRecord rebuild(
          void Function(InterestfieldRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InterestfieldRecordBuilder toBuilder() =>
      new InterestfieldRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InterestfieldRecord &&
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
    return (newBuiltValueToStringHelper(r'InterestfieldRecord')
          ..add('name', name)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InterestfieldRecordBuilder
    implements Builder<InterestfieldRecord, InterestfieldRecordBuilder> {
  _$InterestfieldRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InterestfieldRecordBuilder() {
    InterestfieldRecord._initializeBuilder(this);
  }

  InterestfieldRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InterestfieldRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InterestfieldRecord;
  }

  @override
  void update(void Function(InterestfieldRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InterestfieldRecord build() => _build();

  _$InterestfieldRecord _build() {
    final _$result =
        _$v ?? new _$InterestfieldRecord._(name: name, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
