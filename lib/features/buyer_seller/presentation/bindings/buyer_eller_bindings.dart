import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:rentify/features/buyer_seller/data/data_source/remote/property_api_service.dart';
import 'package:rentify/features/buyer_seller/domain/repository/property_repository.dart';
import 'package:rentify/features/buyer_seller/presentation/controller/buyer_controller.dart';
import 'package:rentify/features/buyer_seller/presentation/controller/seller_controller.dart';

class BuyerSellerBindings extends Bindings {
  @override
  void dependencies() {
    final dio = Dio();
    final apiService = PropertyApiService(dio);

    Get.lazyPut<PropertyRepository>(() => PropertyRepository(apiService));
    Get.lazyPut<SellerController>(() => SellerController(Get.find<PropertyRepository>()));
    Get.lazyPut<BuyerController>(() => BuyerController(Get.find<PropertyRepository>()));
  }
}
