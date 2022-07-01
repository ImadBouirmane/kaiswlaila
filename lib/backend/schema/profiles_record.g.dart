// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profiles_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProfilesRecord> _$profilesRecordSerializer =
    new _$ProfilesRecordSerializer();

class _$ProfilesRecordSerializer
    implements StructuredSerializer<ProfilesRecord> {
  @override
  final Iterable<Type> types = const [ProfilesRecord, _$ProfilesRecord];
  @override
  final String wireName = 'ProfilesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProfilesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.usersMale;
    if (value != null) {
      result
        ..add('usersMale')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.usersFemale;
    if (value != null) {
      result
        ..add('usersFemale')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
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
  ProfilesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfilesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'usersMale':
          result.usersMale.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'usersFemale':
          result.usersFemale.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
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

class _$ProfilesRecord extends ProfilesRecord {
  @override
  final BuiltList<DocumentReference<Object>> usersMale;
  @override
  final BuiltList<DocumentReference<Object>> usersFemale;
  @override
  final DocumentReference<Object> reference;

  factory _$ProfilesRecord([void Function(ProfilesRecordBuilder) updates]) =>
      (new ProfilesRecordBuilder()..update(updates)).build();

  _$ProfilesRecord._({this.usersMale, this.usersFemale, this.reference})
      : super._();

  @override
  ProfilesRecord rebuild(void Function(ProfilesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfilesRecordBuilder toBuilder() =>
      new ProfilesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfilesRecord &&
        usersMale == other.usersMale &&
        usersFemale == other.usersFemale &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, usersMale.hashCode), usersFemale.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProfilesRecord')
          ..add('usersMale', usersMale)
          ..add('usersFemale', usersFemale)
          ..add('reference', reference))
        .toString();
  }
}

class ProfilesRecordBuilder
    implements Builder<ProfilesRecord, ProfilesRecordBuilder> {
  _$ProfilesRecord _$v;

  ListBuilder<DocumentReference<Object>> _usersMale;
  ListBuilder<DocumentReference<Object>> get usersMale =>
      _$this._usersMale ??= new ListBuilder<DocumentReference<Object>>();
  set usersMale(ListBuilder<DocumentReference<Object>> usersMale) =>
      _$this._usersMale = usersMale;

  ListBuilder<DocumentReference<Object>> _usersFemale;
  ListBuilder<DocumentReference<Object>> get usersFemale =>
      _$this._usersFemale ??= new ListBuilder<DocumentReference<Object>>();
  set usersFemale(ListBuilder<DocumentReference<Object>> usersFemale) =>
      _$this._usersFemale = usersFemale;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProfilesRecordBuilder() {
    ProfilesRecord._initializeBuilder(this);
  }

  ProfilesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usersMale = $v.usersMale?.toBuilder();
      _usersFemale = $v.usersFemale?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfilesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfilesRecord;
  }

  @override
  void update(void Function(ProfilesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProfilesRecord build() {
    _$ProfilesRecord _$result;
    try {
      _$result = _$v ??
          new _$ProfilesRecord._(
              usersMale: _usersMale?.build(),
              usersFemale: _usersFemale?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'usersMale';
        _usersMale?.build();
        _$failedField = 'usersFemale';
        _usersFemale?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProfilesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
