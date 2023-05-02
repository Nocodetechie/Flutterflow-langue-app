import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'podcastlesson_record.g.dart';

abstract class PodcastlessonRecord
    implements Built<PodcastlessonRecord, PodcastlessonRecordBuilder> {
  static Serializer<PodcastlessonRecord> get serializer =>
      _$podcastlessonRecordSerializer;

  String? get description;

  String? get image;

  String? get title;

  String? get url;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PodcastlessonRecordBuilder builder) => builder
    ..description = ''
    ..image = ''
    ..title = ''
    ..url = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('podcastlesson');

  static Stream<PodcastlessonRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PodcastlessonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PodcastlessonRecord._();
  factory PodcastlessonRecord(
          [void Function(PodcastlessonRecordBuilder) updates]) =
      _$PodcastlessonRecord;

  static PodcastlessonRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPodcastlessonRecordData({
  String? description,
  String? image,
  String? title,
  String? url,
}) {
  final firestoreData = serializers.toFirestore(
    PodcastlessonRecord.serializer,
    PodcastlessonRecord(
      (p) => p
        ..description = description
        ..image = image
        ..title = title
        ..url = url,
    ),
  );

  return firestoreData;
}
