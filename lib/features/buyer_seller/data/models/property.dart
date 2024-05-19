import 'package:json_annotation/json_annotation.dart';

part 'property.g.dart';

@JsonSerializable()
class Property {
  String id;
  String place;
  String area;
  int numberOfBedrooms;
  int numberOfBathrooms;
  String nearby;

  Property({
    required this.id,
    required this.place,
    required this.area,
    required this.numberOfBedrooms,
    required this.numberOfBathrooms,
    required this.nearby,
  });

  factory Property.fromJson(Map<String, dynamic> json) => _$PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$PropertyToJson(this);

  Property copyWith({
    String? id,
    String? place,
    String? area,
    int? numberOfBedrooms,
    int? numberOfBathrooms,
    String? nearby,
  }) {
    return Property(
      id: id ?? this.id,
      place: place ?? this.place,
      area: area ?? this.area,
      numberOfBedrooms: numberOfBedrooms ?? this.numberOfBedrooms,
      numberOfBathrooms: numberOfBathrooms ?? this.numberOfBathrooms,
      nearby: nearby ?? this.nearby,
    );
  }
}

