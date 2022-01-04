import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get pwd;

  @nullable
  String get gender;

  @nullable
  LatLng get location;

  @nullable
  String get city;

  @nullable
  String get bio;

  @nullable
  BuiltList<String> get photos;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get interest1;

  @nullable
  String get interest2;

  @nullable
  String get interest3;

  @nullable
  String get interest4;

  @nullable
  bool get like;

  @nullable
  String get title;

  @nullable
  String get country;

  @nullable
  bool get isRegistered;

  @nullable
  bool get isNew;

  @nullable
  String get dateOfBirth;

  @nullable
  String get day;

  @nullable
  String get month;

  @nullable
  String get year;

  @nullable
  bool get qs5c1;

  @nullable
  bool get qs5c2;

  @nullable
  bool get qs5c3;

  @nullable
  bool get qs5c4;

  @nullable
  bool get qs5c5;

  @nullable
  bool get qs5c6;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..pwd = ''
    ..gender = ''
    ..city = ''
    ..bio = ''
    ..photos = ListBuilder()
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..interest1 = ''
    ..interest2 = ''
    ..interest3 = ''
    ..interest4 = ''
    ..like = false
    ..title = ''
    ..country = ''
    ..isRegistered = false
    ..isNew = false
    ..dateOfBirth = ''
    ..day = ''
    ..month = ''
    ..year = ''
    ..qs5c1 = false
    ..qs5c2 = false
    ..qs5c3 = false
    ..qs5c4 = false
    ..qs5c5 = false
    ..qs5c6 = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String pwd,
  String gender,
  LatLng location,
  String city,
  String bio,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String interest1,
  String interest2,
  String interest3,
  String interest4,
  bool like,
  String title,
  String country,
  bool isRegistered,
  bool isNew,
  String dateOfBirth,
  String day,
  String month,
  String year,
  bool qs5c1,
  bool qs5c2,
  bool qs5c3,
  bool qs5c4,
  bool qs5c5,
  bool qs5c6,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..pwd = pwd
          ..gender = gender
          ..location = location
          ..city = city
          ..bio = bio
          ..photos = null
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..interest1 = interest1
          ..interest2 = interest2
          ..interest3 = interest3
          ..interest4 = interest4
          ..like = like
          ..title = title
          ..country = country
          ..isRegistered = isRegistered
          ..isNew = isNew
          ..dateOfBirth = dateOfBirth
          ..day = day
          ..month = month
          ..year = year
          ..qs5c1 = qs5c1
          ..qs5c2 = qs5c2
          ..qs5c3 = qs5c3
          ..qs5c4 = qs5c4
          ..qs5c5 = qs5c5
          ..qs5c6 = qs5c6));
