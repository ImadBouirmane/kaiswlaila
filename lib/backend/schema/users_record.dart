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
  String get function;

  @nullable
  String get photo1;

  @nullable
  String get photo2;

  @nullable
  String get photo3;

  @nullable
  String get photo4;

  @nullable
  @BuiltValueField(wireName: 'QsQ1')
  String get qsQ1;

  @nullable
  @BuiltValueField(wireName: 'QsQ2')
  String get qsQ2;

  @nullable
  @BuiltValueField(wireName: 'QsQ3')
  String get qsQ3;

  @nullable
  @BuiltValueField(wireName: 'QsQ4')
  String get qsQ4;

  @nullable
  @BuiltValueField(wireName: 'QsQ5C1')
  bool get qsQ5C1;

  @nullable
  @BuiltValueField(wireName: 'QsQ5C2')
  bool get qsQ5C2;

  @nullable
  @BuiltValueField(wireName: 'QsQ5C3')
  bool get qsQ5C3;

  @nullable
  @BuiltValueField(wireName: 'QsQ5C4')
  bool get qsQ5C4;

  @nullable
  @BuiltValueField(wireName: 'QsQ5C5')
  bool get qsQ5C5;

  @nullable
  @BuiltValueField(wireName: 'QsQ5C6')
  bool get qsQ5C6;

  @nullable
  @BuiltValueField(wireName: 'QsQ5C7')
  bool get qsQ5C7;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C1')
  bool get qsQ6C1;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C2')
  bool get qsQ6C2;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C3')
  bool get qsQ6C3;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C4')
  bool get qsQ6C4;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C5')
  bool get qsQ6C5;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C6')
  bool get qsQ6C6;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C7')
  bool get qsQ6C7;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C8')
  bool get qsQ6C8;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C9')
  bool get qsQ6C9;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C10')
  bool get qsQ6C10;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C11')
  bool get qsQ6C11;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C12')
  bool get qsQ6C12;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C13')
  bool get qsQ6C13;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C14')
  bool get qsQ6C14;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C15')
  bool get qsQ6C15;

  @nullable
  @BuiltValueField(wireName: 'QsQ6C16')
  bool get qsQ6C16;

  @nullable
  @BuiltValueField(wireName: 'QsQ7R1')
  double get qsQ7R1;

  @nullable
  @BuiltValueField(wireName: 'QsQ7R2')
  double get qsQ7R2;

  @nullable
  @BuiltValueField(wireName: 'QsQ7R3')
  double get qsQ7R3;

  @nullable
  @BuiltValueField(wireName: 'QsQ7R4')
  double get qsQ7R4;

  @nullable
  @BuiltValueField(wireName: 'QsQ7R5')
  double get qsQ7R5;

  @nullable
  @BuiltValueField(wireName: 'QsQ7R6')
  double get qsQ7R6;

  @nullable
  @BuiltValueField(wireName: 'QsQ7R7')
  double get qsQ7R7;

  @nullable
  @BuiltValueField(wireName: 'QsQ8')
  String get qsQ8;

  @nullable
  @BuiltValueField(wireName: 'QsQ9')
  String get qsQ9;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C1')
  bool get qsQ10C1;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C2')
  bool get qsQ10C2;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C3')
  bool get qsQ10C3;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C4')
  bool get qsQ10C4;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C5')
  bool get qsQ10C5;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C6')
  bool get qsQ10C6;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C7')
  bool get qsQ10C7;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C8')
  bool get qsQ10C8;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C9')
  bool get qsQ10C9;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C10')
  bool get qsQ10C10;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C11')
  bool get qsQ10C11;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C12')
  bool get qsQ10C12;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C13')
  bool get qsQ10C13;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C14')
  bool get qsQ10C14;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C15')
  bool get qsQ10C15;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C16')
  bool get qsQ10C16;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C17')
  bool get qsQ10C17;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C18')
  bool get qsQ10C18;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C19')
  bool get qsQ10C19;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C20')
  bool get qsQ10C20;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C21')
  bool get qsQ10C21;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C22')
  bool get qsQ10C22;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C23')
  bool get qsQ10C23;

  @nullable
  @BuiltValueField(wireName: 'QsQ10C24')
  bool get qsQ10C24;

  @nullable
  @BuiltValueField(wireName: 'QsQ11')
  String get qsQ11;

  @nullable
  @BuiltValueField(wireName: 'QsQ12')
  String get qsQ12;

  @nullable
  @BuiltValueField(wireName: 'QsQ13R1')
  String get qsQ13R1;

  @nullable
  @BuiltValueField(wireName: 'QsQ13R2')
  String get qsQ13R2;

  @nullable
  @BuiltValueField(wireName: 'QsQ13R3')
  String get qsQ13R3;

  @nullable
  @BuiltValueField(wireName: 'QsQ14C1')
  bool get qsQ14C1;

  @nullable
  @BuiltValueField(wireName: 'QsQ14C2')
  bool get qsQ14C2;

  @nullable
  @BuiltValueField(wireName: 'QsQ14C3')
  bool get qsQ14C3;

  @nullable
  double get ageChoice;

  @nullable
  double get distance;

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
    ..country = ''
    ..isRegistered = false
    ..isNew = false
    ..dateOfBirth = ''
    ..day = ''
    ..month = ''
    ..year = ''
    ..function = ''
    ..photo1 = ''
    ..photo2 = ''
    ..photo3 = ''
    ..photo4 = ''
    ..qsQ1 = ''
    ..qsQ2 = ''
    ..qsQ3 = ''
    ..qsQ4 = ''
    ..qsQ5C1 = false
    ..qsQ5C2 = false
    ..qsQ5C3 = false
    ..qsQ5C4 = false
    ..qsQ5C5 = false
    ..qsQ5C6 = false
    ..qsQ5C7 = false
    ..qsQ6C1 = false
    ..qsQ6C2 = false
    ..qsQ6C3 = false
    ..qsQ6C4 = false
    ..qsQ6C5 = false
    ..qsQ6C6 = false
    ..qsQ6C7 = false
    ..qsQ6C8 = false
    ..qsQ6C9 = false
    ..qsQ6C10 = false
    ..qsQ6C11 = false
    ..qsQ6C12 = false
    ..qsQ6C13 = false
    ..qsQ6C14 = false
    ..qsQ6C15 = false
    ..qsQ6C16 = false
    ..qsQ7R1 = 0.0
    ..qsQ7R2 = 0.0
    ..qsQ7R3 = 0.0
    ..qsQ7R4 = 0.0
    ..qsQ7R5 = 0.0
    ..qsQ7R6 = 0.0
    ..qsQ7R7 = 0.0
    ..qsQ8 = ''
    ..qsQ9 = ''
    ..qsQ10C1 = false
    ..qsQ10C2 = false
    ..qsQ10C3 = false
    ..qsQ10C4 = false
    ..qsQ10C5 = false
    ..qsQ10C6 = false
    ..qsQ10C7 = false
    ..qsQ10C8 = false
    ..qsQ10C9 = false
    ..qsQ10C10 = false
    ..qsQ10C11 = false
    ..qsQ10C12 = false
    ..qsQ10C13 = false
    ..qsQ10C14 = false
    ..qsQ10C15 = false
    ..qsQ10C16 = false
    ..qsQ10C17 = false
    ..qsQ10C18 = false
    ..qsQ10C19 = false
    ..qsQ10C20 = false
    ..qsQ10C21 = false
    ..qsQ10C22 = false
    ..qsQ10C23 = false
    ..qsQ10C24 = false
    ..qsQ11 = ''
    ..qsQ12 = ''
    ..qsQ13R1 = ''
    ..qsQ13R2 = ''
    ..qsQ13R3 = ''
    ..qsQ14C1 = false
    ..qsQ14C2 = false
    ..qsQ14C3 = false
    ..ageChoice = 0.0
    ..distance = 0.0;

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
  String country,
  bool isRegistered,
  bool isNew,
  String dateOfBirth,
  String day,
  String month,
  String year,
  String function,
  String photo1,
  String photo2,
  String photo3,
  String photo4,
  String qsQ1,
  String qsQ2,
  String qsQ3,
  String qsQ4,
  bool qsQ5C1,
  bool qsQ5C2,
  bool qsQ5C3,
  bool qsQ5C4,
  bool qsQ5C5,
  bool qsQ5C6,
  bool qsQ5C7,
  bool qsQ6C1,
  bool qsQ6C2,
  bool qsQ6C3,
  bool qsQ6C4,
  bool qsQ6C5,
  bool qsQ6C6,
  bool qsQ6C7,
  bool qsQ6C8,
  bool qsQ6C9,
  bool qsQ6C10,
  bool qsQ6C11,
  bool qsQ6C12,
  bool qsQ6C13,
  bool qsQ6C14,
  bool qsQ6C15,
  bool qsQ6C16,
  double qsQ7R1,
  double qsQ7R2,
  double qsQ7R3,
  double qsQ7R4,
  double qsQ7R5,
  double qsQ7R6,
  double qsQ7R7,
  String qsQ8,
  String qsQ9,
  bool qsQ10C1,
  bool qsQ10C2,
  bool qsQ10C3,
  bool qsQ10C4,
  bool qsQ10C5,
  bool qsQ10C6,
  bool qsQ10C7,
  bool qsQ10C8,
  bool qsQ10C9,
  bool qsQ10C10,
  bool qsQ10C11,
  bool qsQ10C12,
  bool qsQ10C13,
  bool qsQ10C14,
  bool qsQ10C15,
  bool qsQ10C16,
  bool qsQ10C17,
  bool qsQ10C18,
  bool qsQ10C19,
  bool qsQ10C20,
  bool qsQ10C21,
  bool qsQ10C22,
  bool qsQ10C23,
  bool qsQ10C24,
  String qsQ11,
  String qsQ12,
  String qsQ13R1,
  String qsQ13R2,
  String qsQ13R3,
  bool qsQ14C1,
  bool qsQ14C2,
  bool qsQ14C3,
  double ageChoice,
  double distance,
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
          ..country = country
          ..isRegistered = isRegistered
          ..isNew = isNew
          ..dateOfBirth = dateOfBirth
          ..day = day
          ..month = month
          ..year = year
          ..function = function
          ..photo1 = photo1
          ..photo2 = photo2
          ..photo3 = photo3
          ..photo4 = photo4
          ..qsQ1 = qsQ1
          ..qsQ2 = qsQ2
          ..qsQ3 = qsQ3
          ..qsQ4 = qsQ4
          ..qsQ5C1 = qsQ5C1
          ..qsQ5C2 = qsQ5C2
          ..qsQ5C3 = qsQ5C3
          ..qsQ5C4 = qsQ5C4
          ..qsQ5C5 = qsQ5C5
          ..qsQ5C6 = qsQ5C6
          ..qsQ5C7 = qsQ5C7
          ..qsQ6C1 = qsQ6C1
          ..qsQ6C2 = qsQ6C2
          ..qsQ6C3 = qsQ6C3
          ..qsQ6C4 = qsQ6C4
          ..qsQ6C5 = qsQ6C5
          ..qsQ6C6 = qsQ6C6
          ..qsQ6C7 = qsQ6C7
          ..qsQ6C8 = qsQ6C8
          ..qsQ6C9 = qsQ6C9
          ..qsQ6C10 = qsQ6C10
          ..qsQ6C11 = qsQ6C11
          ..qsQ6C12 = qsQ6C12
          ..qsQ6C13 = qsQ6C13
          ..qsQ6C14 = qsQ6C14
          ..qsQ6C15 = qsQ6C15
          ..qsQ6C16 = qsQ6C16
          ..qsQ7R1 = qsQ7R1
          ..qsQ7R2 = qsQ7R2
          ..qsQ7R3 = qsQ7R3
          ..qsQ7R4 = qsQ7R4
          ..qsQ7R5 = qsQ7R5
          ..qsQ7R6 = qsQ7R6
          ..qsQ7R7 = qsQ7R7
          ..qsQ8 = qsQ8
          ..qsQ9 = qsQ9
          ..qsQ10C1 = qsQ10C1
          ..qsQ10C2 = qsQ10C2
          ..qsQ10C3 = qsQ10C3
          ..qsQ10C4 = qsQ10C4
          ..qsQ10C5 = qsQ10C5
          ..qsQ10C6 = qsQ10C6
          ..qsQ10C7 = qsQ10C7
          ..qsQ10C8 = qsQ10C8
          ..qsQ10C9 = qsQ10C9
          ..qsQ10C10 = qsQ10C10
          ..qsQ10C11 = qsQ10C11
          ..qsQ10C12 = qsQ10C12
          ..qsQ10C13 = qsQ10C13
          ..qsQ10C14 = qsQ10C14
          ..qsQ10C15 = qsQ10C15
          ..qsQ10C16 = qsQ10C16
          ..qsQ10C17 = qsQ10C17
          ..qsQ10C18 = qsQ10C18
          ..qsQ10C19 = qsQ10C19
          ..qsQ10C20 = qsQ10C20
          ..qsQ10C21 = qsQ10C21
          ..qsQ10C22 = qsQ10C22
          ..qsQ10C23 = qsQ10C23
          ..qsQ10C24 = qsQ10C24
          ..qsQ11 = qsQ11
          ..qsQ12 = qsQ12
          ..qsQ13R1 = qsQ13R1
          ..qsQ13R2 = qsQ13R2
          ..qsQ13R3 = qsQ13R3
          ..qsQ14C1 = qsQ14C1
          ..qsQ14C2 = qsQ14C2
          ..qsQ14C3 = qsQ14C3
          ..ageChoice = ageChoice
          ..distance = distance));
