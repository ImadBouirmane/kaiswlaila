import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'matches_record.g.dart';

abstract class MatchesRecord
    implements Built<MatchesRecord, MatchesRecordBuilder> {
  static Serializer<MatchesRecord> get serializer => _$matchesRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  bool get isMatch;

  @nullable
  bool get isNotMatch;

  @nullable
  bool get like;

  @nullable
  BuiltList<DocumentReference> get users;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MatchesRecordBuilder builder) => builder
    ..isMatch = false
    ..isNotMatch = false
    ..like = false
    ..users = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('matches');

  static Stream<MatchesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MatchesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MatchesRecord._();
  factory MatchesRecord([void Function(MatchesRecordBuilder) updates]) =
      _$MatchesRecord;

  static MatchesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMatchesRecordData({
  DocumentReference user,
  bool isMatch,
  bool isNotMatch,
  bool like,
}) =>
    serializers.toFirestore(
        MatchesRecord.serializer,
        MatchesRecord((m) => m
          ..user = user
          ..isMatch = isMatch
          ..isNotMatch = isNotMatch
          ..like = like
          ..users = null));
