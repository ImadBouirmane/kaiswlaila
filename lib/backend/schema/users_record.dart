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
  double get ageChoice;

  @nullable
  double get distance;

  @nullable
  String get genderChoice;

  @nullable
  @BuiltValueField(wireName: 'Qs1Choice')
  String get qs1Choice;

  @nullable
  @BuiltValueField(wireName: 'Qs2Choice')
  String get qs2Choice;

  @nullable
  @BuiltValueField(wireName: 'Qs3Choice')
  String get qs3Choice;

  @nullable
  @BuiltValueField(wireName: 'Qs4Choice')
  String get qs4Choice;

  @nullable
  @BuiltValueField(wireName: 'Qs5')
  BuiltList<String> get qs5;

  @nullable
  @BuiltValueField(wireName: 'Qs6RB1')
  double get qs6RB1;

  @nullable
  @BuiltValueField(wireName: 'Qs6RB2')
  double get qs6RB2;

  @nullable
  @BuiltValueField(wireName: 'Qs6RB3')
  double get qs6RB3;

  @nullable
  @BuiltValueField(wireName: 'Qs6RB4')
  double get qs6RB4;

  @nullable
  @BuiltValueField(wireName: 'Qs6RB5')
  double get qs6RB5;

  @nullable
  @BuiltValueField(wireName: 'Qs6RB6')
  double get qs6RB6;

  @nullable
  @BuiltValueField(wireName: 'Qs7Choice')
  String get qs7Choice;

  @nullable
  @BuiltValueField(wireName: 'Qs8Choice')
  String get qs8Choice;

  @nullable
  @BuiltValueField(wireName: 'Qs9C1')
  BuiltList<String> get qs9C1;

  @nullable
  @BuiltValueField(wireName: 'Qs9C2')
  BuiltList<String> get qs9C2;

  @nullable
  @BuiltValueField(wireName: 'Qs9C3')
  BuiltList<String> get qs9C3;

  @nullable
  @BuiltValueField(wireName: 'Qs10Choice')
  String get qs10Choice;

  @nullable
  @BuiltValueField(wireName: 'Qs11Choice')
  String get qs11Choice;

  @nullable
  @BuiltValueField(wireName: 'Qs12TF1')
  String get qs12TF1;

  @nullable
  @BuiltValueField(wireName: 'Qs12TF2')
  String get qs12TF2;

  @nullable
  @BuiltValueField(wireName: 'Qs12TF3')
  String get qs12TF3;

  @nullable
  @BuiltValueField(wireName: 'Qs13List1')
  BuiltList<String> get qs13List1;

  @nullable
  @BuiltValueField(wireName: 'Qs13List2')
  BuiltList<String> get qs13List2;

  @nullable
  @BuiltValueField(wireName: 'Qs13List3')
  BuiltList<String> get qs13List3;

  @nullable
  double get progressBar;

  @nullable
  BuiltList<DocumentReference> get users;

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
    ..ageChoice = 0.0
    ..distance = 0.0
    ..genderChoice = ''
    ..qs1Choice = ''
    ..qs2Choice = ''
    ..qs3Choice = ''
    ..qs4Choice = ''
    ..qs5 = ListBuilder()
    ..qs6RB1 = 0.0
    ..qs6RB2 = 0.0
    ..qs6RB3 = 0.0
    ..qs6RB4 = 0.0
    ..qs6RB5 = 0.0
    ..qs6RB6 = 0.0
    ..qs7Choice = ''
    ..qs8Choice = ''
    ..qs9C1 = ListBuilder()
    ..qs9C2 = ListBuilder()
    ..qs9C3 = ListBuilder()
    ..qs10Choice = ''
    ..qs11Choice = ''
    ..qs12TF1 = ''
    ..qs12TF2 = ''
    ..qs12TF3 = ''
    ..qs13List1 = ListBuilder()
    ..qs13List2 = ListBuilder()
    ..qs13List3 = ListBuilder()
    ..progressBar = 0.0
    ..users = ListBuilder();

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
  double ageChoice,
  double distance,
  String genderChoice,
  String qs1Choice,
  String qs2Choice,
  String qs3Choice,
  String qs4Choice,
  double qs6RB1,
  double qs6RB2,
  double qs6RB3,
  double qs6RB4,
  double qs6RB5,
  double qs6RB6,
  String qs7Choice,
  String qs8Choice,
  String qs10Choice,
  String qs11Choice,
  String qs12TF1,
  String qs12TF2,
  String qs12TF3,
  double progressBar,
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
          ..ageChoice = ageChoice
          ..distance = distance
          ..genderChoice = genderChoice
          ..qs1Choice = qs1Choice
          ..qs2Choice = qs2Choice
          ..qs3Choice = qs3Choice
          ..qs4Choice = qs4Choice
          ..qs5 = null
          ..qs6RB1 = qs6RB1
          ..qs6RB2 = qs6RB2
          ..qs6RB3 = qs6RB3
          ..qs6RB4 = qs6RB4
          ..qs6RB5 = qs6RB5
          ..qs6RB6 = qs6RB6
          ..qs7Choice = qs7Choice
          ..qs8Choice = qs8Choice
          ..qs9C1 = null
          ..qs9C2 = null
          ..qs9C3 = null
          ..qs10Choice = qs10Choice
          ..qs11Choice = qs11Choice
          ..qs12TF1 = qs12TF1
          ..qs12TF2 = qs12TF2
          ..qs12TF3 = qs12TF3
          ..qs13List1 = null
          ..qs13List2 = null
          ..qs13List3 = null
          ..progressBar = progressBar
          ..users = null));
