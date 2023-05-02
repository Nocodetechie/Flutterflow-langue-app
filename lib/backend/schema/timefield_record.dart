import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'timefield_record.g.dart';

abstract class TimefieldRecord
    implements Built<TimefieldRecord, TimefieldRecordBuilder> {
  static Serializer<TimefieldRecord> get serializer =>
      _$timefieldRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TimefieldRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('timefield');

  static Stream<TimefieldRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TimefieldRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TimefieldRecord._();
  factory TimefieldRecord([void Function(TimefieldRecordBuilder) updates]) =
      _$TimefieldRecord;

  static TimefieldRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTimefieldRecordData({
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    TimefieldRecord.serializer,
    TimefieldRecord(
      (t) => t..name = name,
    ),
  );

  return firestoreData;
}
