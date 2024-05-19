// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Property _$PropertyFromJson(Map<String, dynamic> json) => Property(
      id: json['id'] as String,
      place: json['place'] as String,
      area: json['area'] as String,
      numberOfBedrooms: (json['numberOfBedrooms'] as num).toInt(),
      numberOfBathrooms: (json['numberOfBathrooms'] as num).toInt(),
      nearby: json['nearby'] as String,
    );

Map<String, dynamic> _$PropertyToJson(Property instance) => <String, dynamic>{
      'id': instance.id,
      'place': instance.place,
      'area': instance.area,
      'numberOfBedrooms': instance.numberOfBedrooms,
      'numberOfBathrooms': instance.numberOfBathrooms,
      'nearby': instance.nearby,
    };
