import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'product_image_record.g.dart';

abstract class ProductImageRecord
    implements Built<ProductImageRecord, ProductImageRecordBuilder> {
  static Serializer<ProductImageRecord> get serializer =>
      _$productImageRecordSerializer;

  @nullable
  DocumentReference get id;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProductImageRecordBuilder builder) =>
      builder..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Product_Image');

  static Stream<ProductImageRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProductImageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProductImageRecord._();
  factory ProductImageRecord(
          [void Function(ProductImageRecordBuilder) updates]) =
      _$ProductImageRecord;

  static ProductImageRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProductImageRecordData({
  DocumentReference id,
  String image,
  DateTime createdTime,
}) =>
    serializers.toFirestore(
        ProductImageRecord.serializer,
        ProductImageRecord((p) => p
          ..id = id
          ..image = image
          ..createdTime = createdTime));
