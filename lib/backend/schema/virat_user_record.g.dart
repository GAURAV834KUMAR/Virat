// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'virat_user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ViratUserRecord> _$viratUserRecordSerializer =
    new _$ViratUserRecordSerializer();

class _$ViratUserRecordSerializer
    implements StructuredSerializer<ViratUserRecord> {
  @override
  final Iterable<Type> types = const [ViratUserRecord, _$ViratUserRecord];
  @override
  final String wireName = 'ViratUserRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ViratUserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
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
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.exists;
    if (value != null) {
      result
        ..add('exists')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isAdmin;
    if (value != null) {
      result
        ..add('Is_Admin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ViratUserRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ViratUserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
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
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'exists':
          result.exists = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Is_Admin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$ViratUserRecord extends ViratUserRecord {
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
  final String gender;
  @override
  final bool exists;
  @override
  final String isAdmin;
  @override
  final DocumentReference<Object> reference;

  factory _$ViratUserRecord([void Function(ViratUserRecordBuilder) updates]) =>
      (new ViratUserRecordBuilder()..update(updates))._build();

  _$ViratUserRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.gender,
      this.exists,
      this.isAdmin,
      this.reference})
      : super._();

  @override
  ViratUserRecord rebuild(void Function(ViratUserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ViratUserRecordBuilder toBuilder() =>
      new ViratUserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ViratUserRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        gender == other.gender &&
        exists == other.exists &&
        isAdmin == other.isAdmin &&
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
                                    $jc($jc(0, email.hashCode),
                                        displayName.hashCode),
                                    photoUrl.hashCode),
                                uid.hashCode),
                            createdTime.hashCode),
                        phoneNumber.hashCode),
                    gender.hashCode),
                exists.hashCode),
            isAdmin.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ViratUserRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('gender', gender)
          ..add('exists', exists)
          ..add('isAdmin', isAdmin)
          ..add('reference', reference))
        .toString();
  }
}

class ViratUserRecordBuilder
    implements Builder<ViratUserRecord, ViratUserRecordBuilder> {
  _$ViratUserRecord _$v;

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

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  bool _exists;
  bool get exists => _$this._exists;
  set exists(bool exists) => _$this._exists = exists;

  String _isAdmin;
  String get isAdmin => _$this._isAdmin;
  set isAdmin(String isAdmin) => _$this._isAdmin = isAdmin;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ViratUserRecordBuilder() {
    ViratUserRecord._initializeBuilder(this);
  }

  ViratUserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _gender = $v.gender;
      _exists = $v.exists;
      _isAdmin = $v.isAdmin;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ViratUserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ViratUserRecord;
  }

  @override
  void update(void Function(ViratUserRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  ViratUserRecord build() => _build();

  _$ViratUserRecord _build() {
    final _$result = _$v ??
        new _$ViratUserRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            gender: gender,
            exists: exists,
            isAdmin: isAdmin,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
