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
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
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
    value = object.photos;
    if (value != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
    value = object.interest1;
    if (value != null) {
      result
        ..add('interest1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interest2;
    if (value != null) {
      result
        ..add('interest2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interest3;
    if (value != null) {
      result
        ..add('interest3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interest4;
    if (value != null) {
      result
        ..add('interest4')
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
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
    value = object.qs5c1;
    if (value != null) {
      result
        ..add('qs5c1')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.qs5c2;
    if (value != null) {
      result
        ..add('qs5c2')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.qs5c3;
    if (value != null) {
      result
        ..add('qs5c3')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.qs5c4;
    if (value != null) {
      result
        ..add('qs5c4')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.qs5c5;
    if (value != null) {
      result
        ..add('qs5c5')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.qs5c6;
    if (value != null) {
      result
        ..add('qs5c6')
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
        case 'gender':
          result.gender = serializers.deserialize(value,
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
        case 'photos':
          result.photos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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
        case 'interest1':
          result.interest1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'interest2':
          result.interest2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'interest3':
          result.interest3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'interest4':
          result.interest4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'like':
          result.like = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'qs5c1':
          result.qs5c1 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qs5c2':
          result.qs5c2 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qs5c3':
          result.qs5c3 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qs5c4':
          result.qs5c4 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qs5c5':
          result.qs5c5 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qs5c6':
          result.qs5c6 = serializers.deserialize(value,
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
  final String gender;
  @override
  final LatLng location;
  @override
  final String city;
  @override
  final String bio;
  @override
  final BuiltList<String> photos;
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
  final String interest1;
  @override
  final String interest2;
  @override
  final String interest3;
  @override
  final String interest4;
  @override
  final bool like;
  @override
  final String title;
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
  final bool qs5c1;
  @override
  final bool qs5c2;
  @override
  final bool qs5c3;
  @override
  final bool qs5c4;
  @override
  final bool qs5c5;
  @override
  final bool qs5c6;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.pwd,
      this.gender,
      this.location,
      this.city,
      this.bio,
      this.photos,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.interest1,
      this.interest2,
      this.interest3,
      this.interest4,
      this.like,
      this.title,
      this.country,
      this.isRegistered,
      this.isNew,
      this.dateOfBirth,
      this.day,
      this.month,
      this.year,
      this.qs5c1,
      this.qs5c2,
      this.qs5c3,
      this.qs5c4,
      this.qs5c5,
      this.qs5c6,
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
        gender == other.gender &&
        location == other.location &&
        city == other.city &&
        bio == other.bio &&
        photos == other.photos &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        interest1 == other.interest1 &&
        interest2 == other.interest2 &&
        interest3 == other.interest3 &&
        interest4 == other.interest4 &&
        like == other.like &&
        title == other.title &&
        country == other.country &&
        isRegistered == other.isRegistered &&
        isNew == other.isNew &&
        dateOfBirth == other.dateOfBirth &&
        day == other.day &&
        month == other.month &&
        year == other.year &&
        qs5c1 == other.qs5c1 &&
        qs5c2 == other.qs5c2 &&
        qs5c3 == other.qs5c3 &&
        qs5c4 == other.qs5c4 &&
        qs5c5 == other.qs5c5 &&
        qs5c6 == other.qs5c6 &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, pwd.hashCode), gender.hashCode), location.hashCode), city.hashCode), bio.hashCode), photos.hashCode), email.hashCode), displayName.hashCode), photoUrl.hashCode), uid.hashCode), createdTime.hashCode), phoneNumber.hashCode), interest1.hashCode),
                                                                                interest2.hashCode),
                                                                            interest3.hashCode),
                                                                        interest4.hashCode),
                                                                    like.hashCode),
                                                                title.hashCode),
                                                            country.hashCode),
                                                        isRegistered.hashCode),
                                                    isNew.hashCode),
                                                dateOfBirth.hashCode),
                                            day.hashCode),
                                        month.hashCode),
                                    year.hashCode),
                                qs5c1.hashCode),
                            qs5c2.hashCode),
                        qs5c3.hashCode),
                    qs5c4.hashCode),
                qs5c5.hashCode),
            qs5c6.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('pwd', pwd)
          ..add('gender', gender)
          ..add('location', location)
          ..add('city', city)
          ..add('bio', bio)
          ..add('photos', photos)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('interest1', interest1)
          ..add('interest2', interest2)
          ..add('interest3', interest3)
          ..add('interest4', interest4)
          ..add('like', like)
          ..add('title', title)
          ..add('country', country)
          ..add('isRegistered', isRegistered)
          ..add('isNew', isNew)
          ..add('dateOfBirth', dateOfBirth)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year)
          ..add('qs5c1', qs5c1)
          ..add('qs5c2', qs5c2)
          ..add('qs5c3', qs5c3)
          ..add('qs5c4', qs5c4)
          ..add('qs5c5', qs5c5)
          ..add('qs5c6', qs5c6)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _pwd;
  String get pwd => _$this._pwd;
  set pwd(String pwd) => _$this._pwd = pwd;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  ListBuilder<String> _photos;
  ListBuilder<String> get photos =>
      _$this._photos ??= new ListBuilder<String>();
  set photos(ListBuilder<String> photos) => _$this._photos = photos;

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

  String _interest1;
  String get interest1 => _$this._interest1;
  set interest1(String interest1) => _$this._interest1 = interest1;

  String _interest2;
  String get interest2 => _$this._interest2;
  set interest2(String interest2) => _$this._interest2 = interest2;

  String _interest3;
  String get interest3 => _$this._interest3;
  set interest3(String interest3) => _$this._interest3 = interest3;

  String _interest4;
  String get interest4 => _$this._interest4;
  set interest4(String interest4) => _$this._interest4 = interest4;

  bool _like;
  bool get like => _$this._like;
  set like(bool like) => _$this._like = like;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

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

  bool _qs5c1;
  bool get qs5c1 => _$this._qs5c1;
  set qs5c1(bool qs5c1) => _$this._qs5c1 = qs5c1;

  bool _qs5c2;
  bool get qs5c2 => _$this._qs5c2;
  set qs5c2(bool qs5c2) => _$this._qs5c2 = qs5c2;

  bool _qs5c3;
  bool get qs5c3 => _$this._qs5c3;
  set qs5c3(bool qs5c3) => _$this._qs5c3 = qs5c3;

  bool _qs5c4;
  bool get qs5c4 => _$this._qs5c4;
  set qs5c4(bool qs5c4) => _$this._qs5c4 = qs5c4;

  bool _qs5c5;
  bool get qs5c5 => _$this._qs5c5;
  set qs5c5(bool qs5c5) => _$this._qs5c5 = qs5c5;

  bool _qs5c6;
  bool get qs5c6 => _$this._qs5c6;
  set qs5c6(bool qs5c6) => _$this._qs5c6 = qs5c6;

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
      _gender = $v.gender;
      _location = $v.location;
      _city = $v.city;
      _bio = $v.bio;
      _photos = $v.photos?.toBuilder();
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _interest1 = $v.interest1;
      _interest2 = $v.interest2;
      _interest3 = $v.interest3;
      _interest4 = $v.interest4;
      _like = $v.like;
      _title = $v.title;
      _country = $v.country;
      _isRegistered = $v.isRegistered;
      _isNew = $v.isNew;
      _dateOfBirth = $v.dateOfBirth;
      _day = $v.day;
      _month = $v.month;
      _year = $v.year;
      _qs5c1 = $v.qs5c1;
      _qs5c2 = $v.qs5c2;
      _qs5c3 = $v.qs5c3;
      _qs5c4 = $v.qs5c4;
      _qs5c5 = $v.qs5c5;
      _qs5c6 = $v.qs5c6;
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
              gender: gender,
              location: location,
              city: city,
              bio: bio,
              photos: _photos?.build(),
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              interest1: interest1,
              interest2: interest2,
              interest3: interest3,
              interest4: interest4,
              like: like,
              title: title,
              country: country,
              isRegistered: isRegistered,
              isNew: isNew,
              dateOfBirth: dateOfBirth,
              day: day,
              month: month,
              year: year,
              qs5c1: qs5c1,
              qs5c2: qs5c2,
              qs5c3: qs5c3,
              qs5c4: qs5c4,
              qs5c5: qs5c5,
              qs5c6: qs5c6,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'photos';
        _photos?.build();
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
