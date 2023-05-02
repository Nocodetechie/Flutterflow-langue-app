// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videolesson_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideolessonRecord> _$videolessonRecordSerializer =
    new _$VideolessonRecordSerializer();

class _$VideolessonRecordSerializer
    implements StructuredSerializer<VideolessonRecord> {
  @override
  final Iterable<Type> types = const [VideolessonRecord, _$VideolessonRecord];
  @override
  final String wireName = 'VideolessonRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VideolessonRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.url;
    if (value != null) {
      result
        ..add('url')
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
    value = object.title;
    if (value != null) {
      result
        ..add('title')
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
  VideolessonRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideolessonRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
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

class _$VideolessonRecord extends VideolessonRecord {
  @override
  final String? url;
  @override
  final String? description;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VideolessonRecord(
          [void Function(VideolessonRecordBuilder)? updates]) =>
      (new VideolessonRecordBuilder()..update(updates))._build();

  _$VideolessonRecord._(
      {this.url, this.description, this.title, this.image, this.ffRef})
      : super._();

  @override
  VideolessonRecord rebuild(void Function(VideolessonRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideolessonRecordBuilder toBuilder() =>
      new VideolessonRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideolessonRecord &&
        url == other.url &&
        description == other.description &&
        title == other.title &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideolessonRecord')
          ..add('url', url)
          ..add('description', description)
          ..add('title', title)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VideolessonRecordBuilder
    implements Builder<VideolessonRecord, VideolessonRecordBuilder> {
  _$VideolessonRecord? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VideolessonRecordBuilder() {
    VideolessonRecord._initializeBuilder(this);
  }

  VideolessonRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _description = $v.description;
      _title = $v.title;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideolessonRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideolessonRecord;
  }

  @override
  void update(void Function(VideolessonRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideolessonRecord build() => _build();

  _$VideolessonRecord _build() {
    final _$result = _$v ??
        new _$VideolessonRecord._(
            url: url,
            description: description,
            title: title,
            image: image,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
