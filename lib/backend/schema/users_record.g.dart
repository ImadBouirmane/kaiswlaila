// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.pwd;
    if (value != null) {
      result
        ..add('pwd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.like;
    if (value != null) {
      result
        ..add('like')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isRegistered;
    if (value != null) {
      result
        ..add('isRegistered')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isNew;
    if (value != null) {
      result
        ..add('isNew')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.function;
    if (value != null) {
      result
        ..add('function')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo1;
    if (value != null) {
      result
        ..add('photo1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo2;
    if (value != null) {
      result
        ..add('photo2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo3;
    if (value != null) {
      result
        ..add('photo3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo4;
    if (value != null) {
      result
        ..add('photo4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ageChoice;
    if (value != null) {
      result
        ..add('ageChoice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.distance;
    if (value != null) {
      result
        ..add('distance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.qs1Choice;
    if (value != null) {
      result
        ..add('Qs1Choice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qs2Choice;
    if (value != null) {
      result
        ..add('Qs2Choice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qs3Choice;
    if (value != null) {
      result
        ..add('Qs3Choice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qs4Choice;
    if (value != null) {
      result
        ..add('Qs4Choice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qs5;
    if (value != null) {
      result
        ..add('Qs5')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.qs6RB1;
    if (value != null) {
      result
        ..add('Qs6RB1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.qs6RB2;
    if (value != null) {
      result
        ..add('Qs6RB2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.qs6RB3;
    if (value != null) {
      result
        ..add('Qs6RB3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.qs6RB4;
    if (value != null) {
      result
        ..add('Qs6RB4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.qs6RB5;
    if (value != null) {
      result
        ..add('Qs6RB5')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.qs6RB6;
    if (value != null) {
      result
        ..add('Qs6RB6')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.qs7Choice;
    if (value != null) {
      result
        ..add('Qs7Choice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qs8Choice;
    if (value != null) {
      result
        ..add('Qs8Choice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qs9C1;
    if (value != null) {
      result
        ..add('Qs9C1')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.qs9C2;
    if (value != null) {
      result
        ..add('Qs9C2')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.qs9C3;
    if (value != null) {
      result
        ..add('Qs9C3')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.qs10Choice;
    if (value != null) {
      result
        ..add('Qs10Choice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qs11Choice;
    if (value != null) {
      result
        ..add('Qs11Choice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qs12TF1;
    if (value != null) {
      result
        ..add('Qs12TF1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qs12TF2;
    if (value != null) {
      result
        ..add('Qs12TF2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qs12TF3;
    if (value != null) {
      result
        ..add('Qs12TF3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qs13List1;
    if (value != null) {
      result
        ..add('Qs13List1')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.qs13List2;
    if (value != null) {
      result
        ..add('Qs13List2')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.qs13List3;
    if (value != null) {
      result
        ..add('Qs13List3')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.progressBar;
    if (value != null) {
      result
        ..add('progressBar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.isMale;
    if (value != null) {
      result
        ..add('isMale')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isFemale;
    if (value != null) {
      result
        ..add('isFemale')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.pourcentage;
    if (value != null) {
      result
        ..add('pourcentage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.forMale;
    if (value != null) {
      result
        ..add('forMale')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.forFemale;
    if (value != null) {
      result
        ..add('forFemale')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'pwd':
          result.pwd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'like':
          result.like = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isRegistered':
          result.isRegistered = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isNew':
          result.isNew = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'function':
          result.function = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo1':
          result.photo1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo2':
          result.photo2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo3':
          result.photo3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo4':
          result.photo4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ageChoice':
          result.ageChoice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'distance':
          result.distance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Qs1Choice':
          result.qs1Choice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Qs2Choice':
          result.qs2Choice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Qs3Choice':
          result.qs3Choice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Qs4Choice':
          result.qs4Choice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Qs5':
          result.qs5.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'Qs6RB1':
          result.qs6RB1 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Qs6RB2':
          result.qs6RB2 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Qs6RB3':
          result.qs6RB3 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Qs6RB4':
          result.qs6RB4 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Qs6RB5':
          result.qs6RB5 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Qs6RB6':
          result.qs6RB6 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Qs7Choice':
          result.qs7Choice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Qs8Choice':
          result.qs8Choice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Qs9C1':
          result.qs9C1.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'Qs9C2':
          result.qs9C2.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'Qs9C3':
          result.qs9C3.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'Qs10Choice':
          result.qs10Choice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Qs11Choice':
          result.qs11Choice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Qs12TF1':
          result.qs12TF1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Qs12TF2':
          result.qs12TF2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Qs12TF3':
          result.qs12TF3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Qs13List1':
          result.qs13List1.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'Qs13List2':
          result.qs13List2.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'Qs13List3':
          result.qs13List3.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'progressBar':
          result.progressBar = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'isMale':
          result.isMale = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isFemale':
          result.isFemale = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'pourcentage':
          result.pourcentage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'forMale':
          result.forMale = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'forFemale':
          result.forFemale = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String pwd;
  @override
  final LatLng location;
  @override
  final String city;
  @override
  final String bio;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final bool like;
  @override
  final String country;
  @override
  final bool isRegistered;
  @override
  final bool isNew;
  @override
  final String dateOfBirth;
  @override
  final String day;
  @override
  final String month;
  @override
  final String year;
  @override
  final String function;
  @override
  final String photo1;
  @override
  final String photo2;
  @override
  final String photo3;
  @override
  final String photo4;
  @override
  final double ageChoice;
  @override
  final double distance;
  @override
  final String qs1Choice;
  @override
  final String qs2Choice;
  @override
  final String qs3Choice;
  @override
  final String qs4Choice;
  @override
  final BuiltList<String> qs5;
  @override
  final double qs6RB1;
  @override
  final double qs6RB2;
  @override
  final double qs6RB3;
  @override
  final double qs6RB4;
  @override
  final double qs6RB5;
  @override
  final double qs6RB6;
  @override
  final String qs7Choice;
  @override
  final String qs8Choice;
  @override
  final BuiltList<String> qs9C1;
  @override
  final BuiltList<String> qs9C2;
  @override
  final BuiltList<String> qs9C3;
  @override
  final String qs10Choice;
  @override
  final String qs11Choice;
  @override
  final String qs12TF1;
  @override
  final String qs12TF2;
  @override
  final String qs12TF3;
  @override
  final BuiltList<String> qs13List1;
  @override
  final BuiltList<String> qs13List2;
  @override
  final BuiltList<String> qs13List3;
  @override
  final double progressBar;
  @override
  final BuiltList<DocumentReference<Object>> users;
  @override
  final bool isMale;
  @override
  final bool isFemale;
  @override
  final double pourcentage;
  @override
  final bool forMale;
  @override
  final bool forFemale;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.pwd,
      this.location,
      this.city,
      this.bio,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.like,
      this.country,
      this.isRegistered,
      this.isNew,
      this.dateOfBirth,
      this.day,
      this.month,
      this.year,
      this.function,
      this.photo1,
      this.photo2,
      this.photo3,
      this.photo4,
      this.ageChoice,
      this.distance,
      this.qs1Choice,
      this.qs2Choice,
      this.qs3Choice,
      this.qs4Choice,
      this.qs5,
      this.qs6RB1,
      this.qs6RB2,
      this.qs6RB3,
      this.qs6RB4,
      this.qs6RB5,
      this.qs6RB6,
      this.qs7Choice,
      this.qs8Choice,
      this.qs9C1,
      this.qs9C2,
      this.qs9C3,
      this.qs10Choice,
      this.qs11Choice,
      this.qs12TF1,
      this.qs12TF2,
      this.qs12TF3,
      this.qs13List1,
      this.qs13List2,
      this.qs13List3,
      this.progressBar,
      this.users,
      this.isMale,
      this.isFemale,
      this.pourcentage,
      this.forMale,
      this.forFemale,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        pwd == other.pwd &&
        location == other.location &&
        city == other.city &&
        bio == other.bio &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        like == other.like &&
        country == other.country &&
        isRegistered == other.isRegistered &&
        isNew == other.isNew &&
        dateOfBirth == other.dateOfBirth &&
        day == other.day &&
        month == other.month &&
        year == other.year &&
        function == other.function &&
        photo1 == other.photo1 &&
        photo2 == other.photo2 &&
        photo3 == other.photo3 &&
        photo4 == other.photo4 &&
        ageChoice == other.ageChoice &&
        distance == other.distance &&
        qs1Choice == other.qs1Choice &&
        qs2Choice == other.qs2Choice &&
        qs3Choice == other.qs3Choice &&
        qs4Choice == other.qs4Choice &&
        qs5 == other.qs5 &&
        qs6RB1 == other.qs6RB1 &&
        qs6RB2 == other.qs6RB2 &&
        qs6RB3 == other.qs6RB3 &&
        qs6RB4 == other.qs6RB4 &&
        qs6RB5 == other.qs6RB5 &&
        qs6RB6 == other.qs6RB6 &&
        qs7Choice == other.qs7Choice &&
        qs8Choice == other.qs8Choice &&
        qs9C1 == other.qs9C1 &&
        qs9C2 == other.qs9C2 &&
        qs9C3 == other.qs9C3 &&
        qs10Choice == other.qs10Choice &&
        qs11Choice == other.qs11Choice &&
        qs12TF1 == other.qs12TF1 &&
        qs12TF2 == other.qs12TF2 &&
        qs12TF3 == other.qs12TF3 &&
        qs13List1 == other.qs13List1 &&
        qs13List2 == other.qs13List2 &&
        qs13List3 == other.qs13List3 &&
        progressBar == other.progressBar &&
        users == other.users &&
        isMale == other.isMale &&
        isFemale == other.isFemale &&
        pourcentage == other.pourcentage &&
        forMale == other.forMale &&
        forFemale == other.forFemale &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, pwd.hashCode), location.hashCode), city.hashCode), bio.hashCode), email.hashCode), displayName.hashCode), photoUrl.hashCode), uid.hashCode), createdTime.hashCode), phoneNumber.hashCode), like.hashCode), country.hashCode), isRegistered.hashCode), isNew.hashCode), dateOfBirth.hashCode), day.hashCode), month.hashCode), year.hashCode), function.hashCode), photo1.hashCode), photo2.hashCode), photo3.hashCode), photo4.hashCode), ageChoice.hashCode), distance.hashCode), qs1Choice.hashCode), qs2Choice.hashCode), qs3Choice.hashCode), qs4Choice.hashCode), qs5.hashCode), qs6RB1.hashCode), qs6RB2.hashCode), qs6RB3.hashCode), qs6RB4.hashCode), qs6RB5.hashCode), qs6RB6.hashCode), qs7Choice.hashCode), qs8Choice.hashCode),
                                                                                qs9C1.hashCode),
                                                                            qs9C2.hashCode),
                                                                        qs9C3.hashCode),
                                                                    qs10Choice.hashCode),
                                                                qs11Choice.hashCode),
                                                            qs12TF1.hashCode),
                                                        qs12TF2.hashCode),
                                                    qs12TF3.hashCode),
                                                qs13List1.hashCode),
                                            qs13List2.hashCode),
                                        qs13List3.hashCode),
                                    progressBar.hashCode),
                                users.hashCode),
                            isMale.hashCode),
                        isFemale.hashCode),
                    pourcentage.hashCode),
                forMale.hashCode),
            forFemale.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('pwd', pwd)
          ..add('location', location)
          ..add('city', city)
          ..add('bio', bio)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('like', like)
          ..add('country', country)
          ..add('isRegistered', isRegistered)
          ..add('isNew', isNew)
          ..add('dateOfBirth', dateOfBirth)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year)
          ..add('function', function)
          ..add('photo1', photo1)
          ..add('photo2', photo2)
          ..add('photo3', photo3)
          ..add('photo4', photo4)
          ..add('ageChoice', ageChoice)
          ..add('distance', distance)
          ..add('qs1Choice', qs1Choice)
          ..add('qs2Choice', qs2Choice)
          ..add('qs3Choice', qs3Choice)
          ..add('qs4Choice', qs4Choice)
          ..add('qs5', qs5)
          ..add('qs6RB1', qs6RB1)
          ..add('qs6RB2', qs6RB2)
          ..add('qs6RB3', qs6RB3)
          ..add('qs6RB4', qs6RB4)
          ..add('qs6RB5', qs6RB5)
          ..add('qs6RB6', qs6RB6)
          ..add('qs7Choice', qs7Choice)
          ..add('qs8Choice', qs8Choice)
          ..add('qs9C1', qs9C1)
          ..add('qs9C2', qs9C2)
          ..add('qs9C3', qs9C3)
          ..add('qs10Choice', qs10Choice)
          ..add('qs11Choice', qs11Choice)
          ..add('qs12TF1', qs12TF1)
          ..add('qs12TF2', qs12TF2)
          ..add('qs12TF3', qs12TF3)
          ..add('qs13List1', qs13List1)
          ..add('qs13List2', qs13List2)
          ..add('qs13List3', qs13List3)
          ..add('progressBar', progressBar)
          ..add('users', users)
          ..add('isMale', isMale)
          ..add('isFemale', isFemale)
          ..add('pourcentage', pourcentage)
          ..add('forMale', forMale)
          ..add('forFemale', forFemale)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _pwd;
  String get pwd => _$this._pwd;
  set pwd(String pwd) => _$this._pwd = pwd;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool _like;
  bool get like => _$this._like;
  set like(bool like) => _$this._like = like;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  bool _isRegistered;
  bool get isRegistered => _$this._isRegistered;
  set isRegistered(bool isRegistered) => _$this._isRegistered = isRegistered;

  bool _isNew;
  bool get isNew => _$this._isNew;
  set isNew(bool isNew) => _$this._isNew = isNew;

  String _dateOfBirth;
  String get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String _day;
  String get day => _$this._day;
  set day(String day) => _$this._day = day;

  String _month;
  String get month => _$this._month;
  set month(String month) => _$this._month = month;

  String _year;
  String get year => _$this._year;
  set year(String year) => _$this._year = year;

  String _function;
  String get function => _$this._function;
  set function(String function) => _$this._function = function;

  String _photo1;
  String get photo1 => _$this._photo1;
  set photo1(String photo1) => _$this._photo1 = photo1;

  String _photo2;
  String get photo2 => _$this._photo2;
  set photo2(String photo2) => _$this._photo2 = photo2;

  String _photo3;
  String get photo3 => _$this._photo3;
  set photo3(String photo3) => _$this._photo3 = photo3;

  String _photo4;
  String get photo4 => _$this._photo4;
  set photo4(String photo4) => _$this._photo4 = photo4;

  double _ageChoice;
  double get ageChoice => _$this._ageChoice;
  set ageChoice(double ageChoice) => _$this._ageChoice = ageChoice;

  double _distance;
  double get distance => _$this._distance;
  set distance(double distance) => _$this._distance = distance;

  String _qs1Choice;
  String get qs1Choice => _$this._qs1Choice;
  set qs1Choice(String qs1Choice) => _$this._qs1Choice = qs1Choice;

  String _qs2Choice;
  String get qs2Choice => _$this._qs2Choice;
  set qs2Choice(String qs2Choice) => _$this._qs2Choice = qs2Choice;

  String _qs3Choice;
  String get qs3Choice => _$this._qs3Choice;
  set qs3Choice(String qs3Choice) => _$this._qs3Choice = qs3Choice;

  String _qs4Choice;
  String get qs4Choice => _$this._qs4Choice;
  set qs4Choice(String qs4Choice) => _$this._qs4Choice = qs4Choice;

  ListBuilder<String> _qs5;
  ListBuilder<String> get qs5 => _$this._qs5 ??= new ListBuilder<String>();
  set qs5(ListBuilder<String> qs5) => _$this._qs5 = qs5;

  double _qs6RB1;
  double get qs6RB1 => _$this._qs6RB1;
  set qs6RB1(double qs6RB1) => _$this._qs6RB1 = qs6RB1;

  double _qs6RB2;
  double get qs6RB2 => _$this._qs6RB2;
  set qs6RB2(double qs6RB2) => _$this._qs6RB2 = qs6RB2;

  double _qs6RB3;
  double get qs6RB3 => _$this._qs6RB3;
  set qs6RB3(double qs6RB3) => _$this._qs6RB3 = qs6RB3;

  double _qs6RB4;
  double get qs6RB4 => _$this._qs6RB4;
  set qs6RB4(double qs6RB4) => _$this._qs6RB4 = qs6RB4;

  double _qs6RB5;
  double get qs6RB5 => _$this._qs6RB5;
  set qs6RB5(double qs6RB5) => _$this._qs6RB5 = qs6RB5;

  double _qs6RB6;
  double get qs6RB6 => _$this._qs6RB6;
  set qs6RB6(double qs6RB6) => _$this._qs6RB6 = qs6RB6;

  String _qs7Choice;
  String get qs7Choice => _$this._qs7Choice;
  set qs7Choice(String qs7Choice) => _$this._qs7Choice = qs7Choice;

  String _qs8Choice;
  String get qs8Choice => _$this._qs8Choice;
  set qs8Choice(String qs8Choice) => _$this._qs8Choice = qs8Choice;

  ListBuilder<String> _qs9C1;
  ListBuilder<String> get qs9C1 => _$this._qs9C1 ??= new ListBuilder<String>();
  set qs9C1(ListBuilder<String> qs9C1) => _$this._qs9C1 = qs9C1;

  ListBuilder<String> _qs9C2;
  ListBuilder<String> get qs9C2 => _$this._qs9C2 ??= new ListBuilder<String>();
  set qs9C2(ListBuilder<String> qs9C2) => _$this._qs9C2 = qs9C2;

  ListBuilder<String> _qs9C3;
  ListBuilder<String> get qs9C3 => _$this._qs9C3 ??= new ListBuilder<String>();
  set qs9C3(ListBuilder<String> qs9C3) => _$this._qs9C3 = qs9C3;

  String _qs10Choice;
  String get qs10Choice => _$this._qs10Choice;
  set qs10Choice(String qs10Choice) => _$this._qs10Choice = qs10Choice;

  String _qs11Choice;
  String get qs11Choice => _$this._qs11Choice;
  set qs11Choice(String qs11Choice) => _$this._qs11Choice = qs11Choice;

  String _qs12TF1;
  String get qs12TF1 => _$this._qs12TF1;
  set qs12TF1(String qs12TF1) => _$this._qs12TF1 = qs12TF1;

  String _qs12TF2;
  String get qs12TF2 => _$this._qs12TF2;
  set qs12TF2(String qs12TF2) => _$this._qs12TF2 = qs12TF2;

  String _qs12TF3;
  String get qs12TF3 => _$this._qs12TF3;
  set qs12TF3(String qs12TF3) => _$this._qs12TF3 = qs12TF3;

  ListBuilder<String> _qs13List1;
  ListBuilder<String> get qs13List1 =>
      _$this._qs13List1 ??= new ListBuilder<String>();
  set qs13List1(ListBuilder<String> qs13List1) => _$this._qs13List1 = qs13List1;

  ListBuilder<String> _qs13List2;
  ListBuilder<String> get qs13List2 =>
      _$this._qs13List2 ??= new ListBuilder<String>();
  set qs13List2(ListBuilder<String> qs13List2) => _$this._qs13List2 = qs13List2;

  ListBuilder<String> _qs13List3;
  ListBuilder<String> get qs13List3 =>
      _$this._qs13List3 ??= new ListBuilder<String>();
  set qs13List3(ListBuilder<String> qs13List3) => _$this._qs13List3 = qs13List3;

  double _progressBar;
  double get progressBar => _$this._progressBar;
  set progressBar(double progressBar) => _$this._progressBar = progressBar;

  ListBuilder<DocumentReference<Object>> _users;
  ListBuilder<DocumentReference<Object>> get users =>
      _$this._users ??= new ListBuilder<DocumentReference<Object>>();
  set users(ListBuilder<DocumentReference<Object>> users) =>
      _$this._users = users;

  bool _isMale;
  bool get isMale => _$this._isMale;
  set isMale(bool isMale) => _$this._isMale = isMale;

  bool _isFemale;
  bool get isFemale => _$this._isFemale;
  set isFemale(bool isFemale) => _$this._isFemale = isFemale;

  double _pourcentage;
  double get pourcentage => _$this._pourcentage;
  set pourcentage(double pourcentage) => _$this._pourcentage = pourcentage;

  bool _forMale;
  bool get forMale => _$this._forMale;
  set forMale(bool forMale) => _$this._forMale = forMale;

  bool _forFemale;
  bool get forFemale => _$this._forFemale;
  set forFemale(bool forFemale) => _$this._forFemale = forFemale;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pwd = $v.pwd;
      _location = $v.location;
      _city = $v.city;
      _bio = $v.bio;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _like = $v.like;
      _country = $v.country;
      _isRegistered = $v.isRegistered;
      _isNew = $v.isNew;
      _dateOfBirth = $v.dateOfBirth;
      _day = $v.day;
      _month = $v.month;
      _year = $v.year;
      _function = $v.function;
      _photo1 = $v.photo1;
      _photo2 = $v.photo2;
      _photo3 = $v.photo3;
      _photo4 = $v.photo4;
      _ageChoice = $v.ageChoice;
      _distance = $v.distance;
      _qs1Choice = $v.qs1Choice;
      _qs2Choice = $v.qs2Choice;
      _qs3Choice = $v.qs3Choice;
      _qs4Choice = $v.qs4Choice;
      _qs5 = $v.qs5?.toBuilder();
      _qs6RB1 = $v.qs6RB1;
      _qs6RB2 = $v.qs6RB2;
      _qs6RB3 = $v.qs6RB3;
      _qs6RB4 = $v.qs6RB4;
      _qs6RB5 = $v.qs6RB5;
      _qs6RB6 = $v.qs6RB6;
      _qs7Choice = $v.qs7Choice;
      _qs8Choice = $v.qs8Choice;
      _qs9C1 = $v.qs9C1?.toBuilder();
      _qs9C2 = $v.qs9C2?.toBuilder();
      _qs9C3 = $v.qs9C3?.toBuilder();
      _qs10Choice = $v.qs10Choice;
      _qs11Choice = $v.qs11Choice;
      _qs12TF1 = $v.qs12TF1;
      _qs12TF2 = $v.qs12TF2;
      _qs12TF3 = $v.qs12TF3;
      _qs13List1 = $v.qs13List1?.toBuilder();
      _qs13List2 = $v.qs13List2?.toBuilder();
      _qs13List3 = $v.qs13List3?.toBuilder();
      _progressBar = $v.progressBar;
      _users = $v.users?.toBuilder();
      _isMale = $v.isMale;
      _isFemale = $v.isFemale;
      _pourcentage = $v.pourcentage;
      _forMale = $v.forMale;
      _forFemale = $v.forFemale;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              pwd: pwd,
              location: location,
              city: city,
              bio: bio,
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              like: like,
              country: country,
              isRegistered: isRegistered,
              isNew: isNew,
              dateOfBirth: dateOfBirth,
              day: day,
              month: month,
              year: year,
              function: function,
              photo1: photo1,
              photo2: photo2,
              photo3: photo3,
              photo4: photo4,
              ageChoice: ageChoice,
              distance: distance,
              qs1Choice: qs1Choice,
              qs2Choice: qs2Choice,
              qs3Choice: qs3Choice,
              qs4Choice: qs4Choice,
              qs5: _qs5?.build(),
              qs6RB1: qs6RB1,
              qs6RB2: qs6RB2,
              qs6RB3: qs6RB3,
              qs6RB4: qs6RB4,
              qs6RB5: qs6RB5,
              qs6RB6: qs6RB6,
              qs7Choice: qs7Choice,
              qs8Choice: qs8Choice,
              qs9C1: _qs9C1?.build(),
              qs9C2: _qs9C2?.build(),
              qs9C3: _qs9C3?.build(),
              qs10Choice: qs10Choice,
              qs11Choice: qs11Choice,
              qs12TF1: qs12TF1,
              qs12TF2: qs12TF2,
              qs12TF3: qs12TF3,
              qs13List1: _qs13List1?.build(),
              qs13List2: _qs13List2?.build(),
              qs13List3: _qs13List3?.build(),
              progressBar: progressBar,
              users: _users?.build(),
              isMale: isMale,
              isFemale: isFemale,
              pourcentage: pourcentage,
              forMale: forMale,
              forFemale: forFemale,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'qs5';
        _qs5?.build();

        _$failedField = 'qs9C1';
        _qs9C1?.build();
        _$failedField = 'qs9C2';
        _qs9C2?.build();
        _$failedField = 'qs9C3';
        _qs9C3?.build();

        _$failedField = 'qs13List1';
        _qs13List1?.build();
        _$failedField = 'qs13List2';
        _qs13List2?.build();
        _$failedField = 'qs13List3';
        _qs13List3?.build();

        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
