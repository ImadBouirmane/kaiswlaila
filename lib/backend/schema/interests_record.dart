import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'interests_record.g.dart';

abstract class InterestsRecord
    implements Built<InterestsRecord, InterestsRecordBuilder> {
  static Serializer<InterestsRecord> get serializer =>
      _$interestsRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(InterestsRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('interests');

  static Stream<InterestsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<InterestsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  InterestsRecord._();
  factory InterestsRecord([void Function(InterestsRecordBuilder) updates]) =
      _$InterestsRecord;

  static InterestsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createInterestsRecordData({
  DocumentReference user,
}) =>
    serializers.toFirestore(
        InterestsRecord.serializer, InterestsRecord((i) => i..user = user));
