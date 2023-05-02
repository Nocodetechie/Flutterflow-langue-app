import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'videolesson_record.g.dart';

abstract class VideolessonRecord
    implements Built<VideolessonRecord, VideolessonRecordBuilder> {
  static Serializer<VideolessonRecord> get serializer =>
      _$videolessonRecordSerializer;

  String? get url;

  String? get description;

  String? get title;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VideolessonRecordBuilder builder) => builder
    ..url = ''
    ..description = ''
    ..title = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videolesson');

  static Stream<VideolessonRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VideolessonRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VideolessonRecord._();
  factory VideolessonRecord([void Function(VideolessonRecordBuilder) updates]) =
      _$VideolessonRecord;

  static VideolessonRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVideolessonRecordData({
  String? url,
  String? description,
  String? title,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    VideolessonRecord.serializer,
    VideolessonRecord(
      (v) => v
        ..url = url
        ..description = description
        ..title = title
        ..image = image,
    ),
  );

  return firestoreData;
}
