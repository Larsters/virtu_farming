import 'package:frontend/view/farm_list/crop_type.dart';

class FarmLocation {
  final String name;
  final double latitude;
  final double longitude;
  final CropType crop;

  FarmLocation({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.crop,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'latitude': latitude,
    'longitude': longitude,
    'crop': crop.name,
  };

  factory FarmLocation.fromJson(Map<String, dynamic> json) => FarmLocation(
    name: json['name'] as String,
    latitude: json['latitude'] as double,
    longitude: json['longitude'] as double,
    crop: CropType.values.firstWhere((c) => c.name == json['crop']),
  );
}
