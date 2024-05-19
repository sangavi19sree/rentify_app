import 'package:get/get.dart';
import 'package:rentify/features/auth/presentation/bindings/login/login_bindings.dart';
import 'package:rentify/features/auth/presentation/pages/login/login_page.dart';
import 'package:rentify/features/buyer_seller/presentation/bindings/buyer_eller_bindings.dart';
import 'package:rentify/features/buyer_seller/presentation/pages/buyer/buyer_page.dart';
import 'package:rentify/features/buyer_seller/presentation/pages/seller/seller_page.dart';
import 'package:rentify/shared/presentation/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.login,
        page: () => LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: AppRoutes.buyer,
        page: () => BuyerView(),
        binding: BuyerSellerBindings()),
    GetPage(
        name: AppRoutes.seller,
        page: () => SellerView(),
        binding: BuyerSellerBindings()),
  ];
}
