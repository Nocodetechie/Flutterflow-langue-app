// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcastlesson_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PodcastlessonRecord> _$podcastlessonRecordSerializer =
    new _$PodcastlessonRecordSerializer();

class _$PodcastlessonRecordSerializer
    implements StructuredSerializer<PodcastlessonRecord> {
  @override
  final Iterable<Type> types = const [
    PodcastlessonRecord,
    _$PodcastlessonRecord
  ];
  @override
  final String wireName = 'PodcastlessonRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PodcastlessonRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
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
  PodcastlessonRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PodcastlessonRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
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

class _$PodcastlessonRecord extends PodcastlessonRecord {
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? title;
  @override
  final String? url;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PodcastlessonRecord(
          [void Function(PodcastlessonRecordBuilder)? updates]) =>
      (new PodcastlessonRecordBuilder()..update(updates))._build();

  _$PodcastlessonRecord._(
      {this.description, this.image, this.title, this.url, this.ffRef})
      : super._();

  @override
  PodcastlessonRecord rebuild(
          void Function(PodcastlessonRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PodcastlessonRecordBuilder toBuilder() =>
      new PodcastlessonRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PodcastlessonRecord &&
        description == other.description &&
        image == other.image &&
        title == other.title &&
        url == other.url &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PodcastlessonRecord')
          ..add('description', description)
          ..add('image', image)
          ..add('title', title)
          ..add('url', url)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PodcastlessonRecordBuilder
    implements Builder<PodcastlessonRecord, PodcastlessonRecordBuilder> {
  _$PodcastlessonRecord? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PodcastlessonRecordBuilder() {
    PodcastlessonRecord._initializeBuilder(this);
  }

  PodcastlessonRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _image = $v.image;
      _title = $v.title;
      _url = $v.url;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PodcastlessonRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PodcastlessonRecord;
  }

  @override
  void update(void Function(PodcastlessonRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PodcastlessonRecord build() => _build();

  _$PodcastlessonRecord _build() {
    final _$result = _$v ??
        new _$PodcastlessonRecord._(
            description: description,
            image: image,
            title: title,
            url: url,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
