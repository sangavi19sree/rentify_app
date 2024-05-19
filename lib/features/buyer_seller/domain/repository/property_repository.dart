import 'package:rentify/features/buyer_seller/data/data_source/remote/property_api_service.dart';

import '../../data/models/property.dart';

class PropertyRepository {
  final PropertyApiService apiService;

  PropertyRepository(this.apiService);

  Future<void> createProperty(Property property) => apiService.createProperty(property);

  Future<Property> getProperty(String id) => apiService.getProperty(id);

  Future<List<Property>> getAllProperties() => apiService.getAllProperties();

  Future<void> updateProperty(String id, Property property) => apiService.updateProperty(id, property);

  Future<void> deleteProperty(String id) => apiService.deleteProperty(id);
}
