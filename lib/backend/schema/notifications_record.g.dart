// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationsRecord> _$notificationsRecordSerializer =
    new _$NotificationsRecordSerializer();

class _$NotificationsRecordSerializer
    implements StructuredSerializer<NotificationsRecord> {
  @override
  final Iterable<Type> types = const [
    NotificationsRecord,
    _$NotificationsRecord
  ];
  @override
  final String wireName = 'NotificationsRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, NotificationsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.newMatches;
    if (value != null) {
      result
        ..add('newMatches')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.newLikes;
    if (value != null) {
      result
        ..add('newLikes')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.newMessages;
    if (value != null) {
      result
        ..add('newMessages')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  NotificationsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'newMatches':
          result.newMatches = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'newLikes':
          result.newLikes = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'newMessages':
          result.newMessages = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$NotificationsRecord extends NotificationsRecord {
  @override
  final bool newMatches;
  @override
  final bool newLikes;
  @override
  final bool newMessages;
  @override
  final DocumentReference<Object> user;
  @override
  final DocumentReference<Object> reference;

  factory _$NotificationsRecord(
          [void Function(NotificationsRecordBuilder) updates]) =>
      (new NotificationsRecordBuilder()..update(updates)).build();

  _$NotificationsRecord._(
      {this.newMatches,
      this.newLikes,
      this.newMessages,
      this.user,
      this.reference})
      : super._();

  @override
  NotificationsRecord rebuild(
          void Function(NotificationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsRecordBuilder toBuilder() =>
      new NotificationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationsRecord &&
        newMatches == other.newMatches &&
        newLikes == other.newLikes &&
        newMessages == other.newMessages &&
        user == other.user &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, newMatches.hashCode), newLikes.hashCode),
                newMessages.hashCode),
            user.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationsRecord')
          ..add('newMatches', newMatches)
          ..add('newLikes', newLikes)
          ..add('newMessages', newMessages)
          ..add('user', user)
          ..add('reference', reference))
        .toString();
  }
}

class NotificationsRecordBuilder
    implements Builder<NotificationsRecord, NotificationsRecordBuilder> {
  _$NotificationsRecord _$v;

  bool _newMatches;
  bool get newMatches => _$this._newMatches;
  set newMatches(bool newMatches) => _$this._newMatches = newMatches;

  bool _newLikes;
  bool get newLikes => _$this._newLikes;
  set newLikes(bool newLikes) => _$this._newLikes = newLikes;

  bool _newMessages;
  bool get newMessages => _$this._newMessages;
  set newMessages(bool newMessages) => _$this._newMessages = newMessages;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  NotificationsRecordBuilder() {
    NotificationsRecord._initializeBuilder(this);
  }

  NotificationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newMatches = $v.newMatches;
      _newLikes = $v.newLikes;
      _newMessages = $v.newMessages;
      _user = $v.user;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationsRecord;
  }

  @override
  void update(void Function(NotificationsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationsRecord build() {
    final _$result = _$v ??
        new _$NotificationsRecord._(
            newMatches: newMatches,
            newLikes: newLikes,
            newMessages: newMessages,
            user: user,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
