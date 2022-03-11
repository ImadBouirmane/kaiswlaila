import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'profiles_record.g.dart';

abstract class ProfilesRecord
    implements Built<ProfilesRecord, ProfilesRecordBuilder> {
  static Serializer<ProfilesRecord> get serializer =>
      _$profilesRecordSerializer;

  @nullable
  BuiltList<DocumentReference> get usersMale;

  @nullable
  BuiltList<DocumentReference> get usersFemale;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProfilesRecordBuilder builder) => builder
    ..usersMale = ListBuilder()
    ..usersFemale = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Profiles');

  static Stream<ProfilesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProfilesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProfilesRecord._();
  factory ProfilesRecord([void Function(ProfilesRecordBuilder) updates]) =
      _$ProfilesRecord;

  static ProfilesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProfilesRecordData() => serializers.toFirestore(
    ProfilesRecord.serializer,
    ProfilesRecord((p) => p
      ..usersMale = null
      ..usersFemale = null));
