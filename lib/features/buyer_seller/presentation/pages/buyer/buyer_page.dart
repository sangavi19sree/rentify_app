import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentify/features/buyer_seller/presentation/controller/buyer_controller.dart';
class BuyerView extends StatelessWidget {
  final BuyerController controller = Get.find<BuyerController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buyer View')),
      body: Obx(() {
        if (controller.properties.isEmpty) {
          return Center(child: Text('No properties found.'));
        }
        return ListView.builder(
          itemCount: controller.properties.length,
          itemBuilder: (context, index) {
            final property = controller.properties[index];
            return ListTile(
              title: Text(property.place),
              subtitle: Text(property.area),
              trailing: IconButton(
                icon: Icon(Icons.info),
                onPressed: () {
                },
              ),
              onTap: () {
              },
            );
          },
        );
      }),
    );
  }
}
