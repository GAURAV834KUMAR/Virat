import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'adress_record.g.dart';

abstract class AdressRecord
    implements Built<AdressRecord, AdressRecordBuilder> {
  static Serializer<AdressRecord> get serializer => _$adressRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'Phone_no')
  String get phoneNo;

  @nullable
  @BuiltValueField(wireName: 'PIN_Code')
  int get pINCode;

  @nullable
  @BuiltValueField(wireName: 'Area')
  String get area;

  @nullable
  @BuiltValueField(wireName: 'Landmark')
  String get landmark;

  @nullable
  @BuiltValueField(wireName: 'Town_CityName')
  String get townCityName;

  @nullable
  @BuiltValueField(wireName: 'District')
  String get district;

  @nullable
  @BuiltValueField(wireName: 'State')
  String get state;

  @nullable
  @BuiltValueField(wireName: 'Country')
  String get country;

  @nullable
  String get aid;

  @nullable
  DocumentReference get userid;

  @nullable
  @BuiltValueField(wireName: 'Adress')
  String get adress;

  @nullable
  @BuiltValueField(wireName: 'Address_Type')
  String get addressType;

  @nullable
  @BuiltValueField(wireName: 'Default_Add')
  bool get defaultAdd;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AdressRecordBuilder builder) => builder
    ..name = ''
    ..phoneNo = ''
    ..pINCode = 0
    ..area = ''
    ..landmark = ''
    ..townCityName = ''
    ..district = ''
    ..state = ''
    ..country = ''
    ..aid = ''
    ..adress = ''
    ..addressType = ''
    ..defaultAdd = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Adress');

  static Stream<AdressRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AdressRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AdressRecord._();
  factory AdressRecord([void Function(AdressRecordBuilder) updates]) =
      _$AdressRecord;

  static AdressRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAdressRecordData({
  String name,
  String phoneNo,
  int pINCode,
  String area,
  String landmark,
  String townCityName,
  String district,
  String state,
  String country,
  String aid,
  DocumentReference userid,
  String adress,
  String addressType,
  bool defaultAdd,
}) =>
    serializers.toFirestore(
        AdressRecord.serializer,
        AdressRecord((a) => a
          ..name = name
          ..phoneNo = phoneNo
          ..pINCode = pINCode
          ..area = area
          ..landmark = landmark
          ..townCityName = townCityName
          ..district = district
          ..state = state
          ..country = country
          ..aid = aid
          ..userid = userid
          ..adress = adress
          ..addressType = addressType
          ..defaultAdd = defaultAdd));
