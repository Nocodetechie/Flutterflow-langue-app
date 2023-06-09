// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'levelfield_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LevelfieldRecord> _$levelfieldRecordSerializer =
    new _$LevelfieldRecordSerializer();

class _$LevelfieldRecordSerializer
    implements StructuredSerializer<LevelfieldRecord> {
  @override
  final Iterable<Type> types = const [LevelfieldRecord, _$LevelfieldRecord];
  @override
  final String wireName = 'LevelfieldRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LevelfieldRecord object,
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
  LevelfieldRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LevelfieldRecordBuilder();

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

class _$LevelfieldRecord extends LevelfieldRecord {
  @override
  final String? name;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LevelfieldRecord(
          [void Function(LevelfieldRecordBuilder)? updates]) =>
      (new LevelfieldRecordBuilder()..update(updates))._build();

  _$LevelfieldRecord._({this.name, this.ffRef}) : super._();

  @override
  LevelfieldRecord rebuild(void Function(LevelfieldRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LevelfieldRecordBuilder toBuilder() =>
      new LevelfieldRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LevelfieldRecord &&
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
    return (newBuiltValueToStringHelper(r'LevelfieldRecord')
          ..add('name', name)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LevelfieldRecordBuilder
    implements Builder<LevelfieldRecord, LevelfieldRecordBuilder> {
  _$LevelfieldRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LevelfieldRecordBuilder() {
    LevelfieldRecord._initializeBuilder(this);
  }

  LevelfieldRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LevelfieldRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LevelfieldRecord;
  }

  @override
  void update(void Function(LevelfieldRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LevelfieldRecord build() => _build();

  _$LevelfieldRecord _build() {
    final _$result = _$v ?? new _$LevelfieldRecord._(name: name, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
