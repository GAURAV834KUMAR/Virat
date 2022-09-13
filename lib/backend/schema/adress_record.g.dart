// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adress_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AdressRecord> _$adressRecordSerializer =
    new _$AdressRecordSerializer();

class _$AdressRecordSerializer implements StructuredSerializer<AdressRecord> {
  @override
  final Iterable<Type> types = const [AdressRecord, _$AdressRecord];
  @override
  final String wireName = 'AdressRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AdressRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNo;
    if (value != null) {
      result
        ..add('Phone_no')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pINCode;
    if (value != null) {
      result
        ..add('PIN_Code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.area;
    if (value != null) {
      result
        ..add('Area')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.landmark;
    if (value != null) {
      result
        ..add('Landmark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.townCityName;
    if (value != null) {
      result
        ..add('Town_CityName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.district;
    if (value != null) {
      result
        ..add('District')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('State')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('Country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aid;
    if (value != null) {
      result
        ..add('aid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userid;
    if (value != null) {
      result
        ..add('userid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.adress;
    if (value != null) {
      result
        ..add('Adress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressType;
    if (value != null) {
      result
        ..add('Address_Type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.defaultAdd;
    if (value != null) {
      result
        ..add('Default_Add')
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
  AdressRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdressRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Phone_no':
          result.phoneNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'PIN_Code':
          result.pINCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Area':
          result.area = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Landmark':
          result.landmark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Town_CityName':
          result.townCityName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'District':
          result.district = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'State':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'aid':
          result.aid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userid':
          result.userid = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Adress':
          result.adress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Address_Type':
          result.addressType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Default_Add':
          result.defaultAdd = serializers.deserialize(value,
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

class _$AdressRecord extends AdressRecord {
  @override
  final String name;
  @override
  final String phoneNo;
  @override
  final int pINCode;
  @override
  final String area;
  @override
  final String landmark;
  @override
  final String townCityName;
  @override
  final String district;
  @override
  final String state;
  @override
  final String country;
  @override
  final String aid;
  @override
  final DocumentReference<Object> userid;
  @override
  final String adress;
  @override
  final String addressType;
  @override
  final bool defaultAdd;
  @override
  final DocumentReference<Object> reference;

  factory _$AdressRecord([void Function(AdressRecordBuilder) updates]) =>
      (new AdressRecordBuilder()..update(updates))._build();

  _$AdressRecord._(
      {this.name,
      this.phoneNo,
      this.pINCode,
      this.area,
      this.landmark,
      this.townCityName,
      this.district,
      this.state,
      this.country,
      this.aid,
      this.userid,
      this.adress,
      this.addressType,
      this.defaultAdd,
      this.reference})
      : super._();

  @override
  AdressRecord rebuild(void Function(AdressRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdressRecordBuilder toBuilder() => new AdressRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdressRecord &&
        name == other.name &&
        phoneNo == other.phoneNo &&
        pINCode == other.pINCode &&
        area == other.area &&
        landmark == other.landmark &&
        townCityName == other.townCityName &&
        district == other.district &&
        state == other.state &&
        country == other.country &&
        aid == other.aid &&
        userid == other.userid &&
        adress == other.adress &&
        addressType == other.addressType &&
        defaultAdd == other.defaultAdd &&
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
                                                            $jc(0,
                                                                name.hashCode),
                                                            phoneNo.hashCode),
                                                        pINCode.hashCode),
                                                    area.hashCode),
                                                landmark.hashCode),
                                            townCityName.hashCode),
                                        district.hashCode),
                                    state.hashCode),
                                country.hashCode),
                            aid.hashCode),
                        userid.hashCode),
                    adress.hashCode),
                addressType.hashCode),
            defaultAdd.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdressRecord')
          ..add('name', name)
          ..add('phoneNo', phoneNo)
          ..add('pINCode', pINCode)
          ..add('area', area)
          ..add('landmark', landmark)
          ..add('townCityName', townCityName)
          ..add('district', district)
          ..add('state', state)
          ..add('country', country)
          ..add('aid', aid)
          ..add('userid', userid)
          ..add('adress', adress)
          ..add('addressType', addressType)
          ..add('defaultAdd', defaultAdd)
          ..add('reference', reference))
        .toString();
  }
}

class AdressRecordBuilder
    implements Builder<AdressRecord, AdressRecordBuilder> {
  _$AdressRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _phoneNo;
  String get phoneNo => _$this._phoneNo;
  set phoneNo(String phoneNo) => _$this._phoneNo = phoneNo;

  int _pINCode;
  int get pINCode => _$this._pINCode;
  set pINCode(int pINCode) => _$this._pINCode = pINCode;

  String _area;
  String get area => _$this._area;
  set area(String area) => _$this._area = area;

  String _landmark;
  String get landmark => _$this._landmark;
  set landmark(String landmark) => _$this._landmark = landmark;

  String _townCityName;
  String get townCityName => _$this._townCityName;
  set townCityName(String townCityName) => _$this._townCityName = townCityName;

  String _district;
  String get district => _$this._district;
  set district(String district) => _$this._district = district;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  String _aid;
  String get aid => _$this._aid;
  set aid(String aid) => _$this._aid = aid;

  DocumentReference<Object> _userid;
  DocumentReference<Object> get userid => _$this._userid;
  set userid(DocumentReference<Object> userid) => _$this._userid = userid;

  String _adress;
  String get adress => _$this._adress;
  set adress(String adress) => _$this._adress = adress;

  String _addressType;
  String get addressType => _$this._addressType;
  set addressType(String addressType) => _$this._addressType = addressType;

  bool _defaultAdd;
  bool get defaultAdd => _$this._defaultAdd;
  set defaultAdd(bool defaultAdd) => _$this._defaultAdd = defaultAdd;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AdressRecordBuilder() {
    AdressRecord._initializeBuilder(this);
  }

  AdressRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phoneNo = $v.phoneNo;
      _pINCode = $v.pINCode;
      _area = $v.area;
      _landmark = $v.landmark;
      _townCityName = $v.townCityName;
      _district = $v.district;
      _state = $v.state;
      _country = $v.country;
      _aid = $v.aid;
      _userid = $v.userid;
      _adress = $v.adress;
      _addressType = $v.addressType;
      _defaultAdd = $v.defaultAdd;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdressRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdressRecord;
  }

  @override
  void update(void Function(AdressRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  AdressRecord build() => _build();

  _$AdressRecord _build() {
    final _$result = _$v ??
        new _$AdressRecord._(
            name: name,
            phoneNo: phoneNo,
            pINCode: pINCode,
            area: area,
            landmark: landmark,
            townCityName: townCityName,
            district: district,
            state: state,
            country: country,
            aid: aid,
            userid: userid,
            adress: adress,
            addressType: addressType,
            defaultAdd: defaultAdd,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
