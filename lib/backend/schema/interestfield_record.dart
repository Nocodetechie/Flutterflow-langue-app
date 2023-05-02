import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'interestfield_record.g.dart';

abstract class InterestfieldRecord
    implements Built<InterestfieldRecord, InterestfieldRecordBuilder> {
  static Serializer<InterestfieldRecord> get serializer =>
      _$interestfieldRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(InterestfieldRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('interestfield');

  static Stream<InterestfieldRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InterestfieldRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InterestfieldRecord._();
  factory InterestfieldRecord(
          [void Function(InterestfieldRecordBuilder) updates]) =
      _$InterestfieldRecord;

  static InterestfieldRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInterestfieldRecordData({
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    InterestfieldRecord.serializer,
    InterestfieldRecord(
      (i) => i..name = name,
    ),
  );

  return firestoreData;
}
