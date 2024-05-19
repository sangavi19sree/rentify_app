import 'package:get/get.dart';
import '../../domain/repository/property_repository.dart';
import '../../data/models/property.dart';

class SellerController extends GetxController {
  final PropertyRepository propertyRepository;

  SellerController(this.propertyRepository);

  var properties = <Property>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProperties();
  }

  void fetchProperties() async {
    try {
      var result = await propertyRepository.getAllProperties();
      properties.assignAll(result);
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  void addProperty(Property property) async {
    try {
      await propertyRepository.createProperty(property);
      fetchProperties();
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  void updateProperty(Property updatedProperty) {
    var index = properties.indexWhere((p) => p.id == updatedProperty.id);
    if (index != -1) {
      properties[index] = updatedProperty;
    }
  }

  void deleteProperty(String id) async {
    try {
      await propertyRepository.deleteProperty(id);
      fetchProperties();
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
