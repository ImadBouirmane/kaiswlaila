// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MatchesRecord> _$matchesRecordSerializer =
    new _$MatchesRecordSerializer();

class _$MatchesRecordSerializer implements StructuredSerializer<MatchesRecord> {
  @override
  final Iterable<Type> types = const [MatchesRecord, _$MatchesRecord];
  @override
  final String wireName = 'MatchesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MatchesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.isMatch;
    if (value != null) {
      result
        ..add('isMatch')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isNotMatch;
    if (value != null) {
      result
        ..add('isNotMatch')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.like;
    if (value != null) {
      result
        ..add('like')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  MatchesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'isMatch':
          result.isMatch = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isNotMatch':
          result.isNotMatch = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'like':
          result.like = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
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

class _$MatchesRecord extends MatchesRecord {
  @override
  final DocumentReference<Object> user;
  @override
  final bool isMatch;
  @override
  final bool isNotMatch;
  @override
  final bool like;
  @override
  final BuiltList<DocumentReference<Object>> users;
  @override
  final DocumentReference<Object> reference;

  factory _$MatchesRecord([void Function(MatchesRecordBuilder) updates]) =>
      (new MatchesRecordBuilder()..update(updates)).build();

  _$MatchesRecord._(
      {this.user,
      this.isMatch,
      this.isNotMatch,
      this.like,
      this.users,
      this.reference})
      : super._();

  @override
  MatchesRecord rebuild(void Function(MatchesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchesRecordBuilder toBuilder() => new MatchesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchesRecord &&
        user == other.user &&
        isMatch == other.isMatch &&
        isNotMatch == other.isNotMatch &&
        like == other.like &&
        users == other.users &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, user.hashCode), isMatch.hashCode),
                    isNotMatch.hashCode),
                like.hashCode),
            users.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MatchesRecord')
          ..add('user', user)
          ..add('isMatch', isMatch)
          ..add('isNotMatch', isNotMatch)
          ..add('like', like)
          ..add('users', users)
          ..add('reference', reference))
        .toString();
  }
}

class MatchesRecordBuilder
    implements Builder<MatchesRecord, MatchesRecordBuilder> {
  _$MatchesRecord _$v;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  bool _isMatch;
  bool get isMatch => _$this._isMatch;
  set isMatch(bool isMatch) => _$this._isMatch = isMatch;

  bool _isNotMatch;
  bool get isNotMatch => _$this._isNotMatch;
  set isNotMatch(bool isNotMatch) => _$this._isNotMatch = isNotMatch;

  bool _like;
  bool get like => _$this._like;
  set like(bool like) => _$this._like = like;

  ListBuilder<DocumentReference<Object>> _users;
  ListBuilder<DocumentReference<Object>> get users =>
      _$this._users ??= new ListBuilder<DocumentReference<Object>>();
  set users(ListBuilder<DocumentReference<Object>> users) =>
      _$this._users = users;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MatchesRecordBuilder() {
    MatchesRecord._initializeBuilder(this);
  }

  MatchesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _isMatch = $v.isMatch;
      _isNotMatch = $v.isNotMatch;
      _like = $v.like;
      _users = $v.users?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MatchesRecord;
  }

  @override
  void update(void Function(MatchesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MatchesRecord build() {
    _$MatchesRecord _$result;
    try {
      _$result = _$v ??
          new _$MatchesRecord._(
              user: user,
              isMatch: isMatch,
              isNotMatch: isNotMatch,
              like: like,
              users: _users?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MatchesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
