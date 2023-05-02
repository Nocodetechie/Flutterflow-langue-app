import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'docslesson_record.g.dart';

abstract class DocslessonRecord
    implements Built<DocslessonRecord, DocslessonRecordBuilder> {
  static Serializer<DocslessonRecord> get serializer =>
      _$docslessonRecordSerializer;

  String? get description;

  String? get image;

  String? get title;

  String? get url;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DocslessonRecordBuilder builder) => builder
    ..description = ''
    ..image = ''
    ..title = ''
    ..url = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('docslesson');

  static Stream<DocslessonRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DocslessonRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DocslessonRecord._();
  factory DocslessonRecord([void Function(DocslessonRecordBuilder) updates]) =
      _$DocslessonRecord;

  static DocslessonRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDocslessonRecordData({
  String? description,
  String? image,
  String? title,
  String? url,
}) {
  final firestoreData = serializers.toFirestore(
    DocslessonRecord.serializer,
    DocslessonRecord(
      (d) => d
        ..description = description
        ..image = image
        ..title = title
        ..url = url,
    ),
  );

  return firestoreData;
}
