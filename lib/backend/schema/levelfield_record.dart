import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'levelfield_record.g.dart';

abstract class LevelfieldRecord
    implements Built<LevelfieldRecord, LevelfieldRecordBuilder> {
  static Serializer<LevelfieldRecord> get serializer =>
      _$levelfieldRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LevelfieldRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('levelfield');

  static Stream<LevelfieldRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LevelfieldRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LevelfieldRecord._();
  factory LevelfieldRecord([void Function(LevelfieldRecordBuilder) updates]) =
      _$LevelfieldRecord;

  static LevelfieldRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLevelfieldRecordData({
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    LevelfieldRecord.serializer,
    LevelfieldRecord(
      (l) => l..name = name,
    ),
  );

  return firestoreData;
}
