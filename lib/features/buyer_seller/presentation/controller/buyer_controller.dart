import 'package:get/get.dart';
import '../../domain/repository/property_repository.dart';
import '../../data/models/property.dart';

class BuyerController extends GetxController {
  final PropertyRepository propertyRepository;

  BuyerController(this.propertyRepository);

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

  void applyFilters() {
  }
}
