import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rentify/shared/domain/entity/connectivity_status.dart';
import 'package:rentify/shared/presentation/constants/app_assets.dart';
import 'package:rentify/shared/presentation/controller/internet_connectivity_controller.dart';

class ConnectivityWrapper extends GetView<InternetConnectivityController> {
  final Widget child;

  const ConnectivityWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (controller.status.value == ConnectivityStatus.checking) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }
        if (controller.status.value == ConnectivityStatus.offline) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppAssets.warningIcon,
                    width: 48,
                    height: 48,
                    colorFilter: const ColorFilter.mode(
                      Colors.amber,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "connection_lost_message",
                    style: Get.textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }
        return child;
      },
    );
  }
}
