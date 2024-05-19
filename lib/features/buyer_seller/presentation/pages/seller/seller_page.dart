import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:rentify/features/buyer_seller/data/models/property.dart';
import 'package:rentify/features/buyer_seller/presentation/controller/seller_controller.dart';

class SellerView extends GetView<SellerController> {
  const SellerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Seller Dashboard')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => _showAddPropertyDialog(context),
              child: Text('Add New Property'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Obx(() {
                if (controller.properties.isEmpty) {
                  return Center(child: Text('No properties found.'));
                }
                return ListView.builder(
                  itemCount: controller.properties.length,
                  itemBuilder: (context, index) {
                    final property = controller.properties[index];
                    return PropertyCard(
                      property: property,
                      onDelete: () => controller.deleteProperty(property.id),
                      onEdit: () => _showEditPropertyDialog(context, property),
                    ).animate().fade().slideY();
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  void _showAddPropertyDialog(BuildContext context) {
    final placeController = TextEditingController();
    final areaController = TextEditingController();
    final bedroomsController = TextEditingController();
    final bathroomsController = TextEditingController();
    final nearbyController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add New Property'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: placeController,
                  decoration: InputDecoration(labelText: 'Place'),
                ),
                TextField(
                  controller: areaController,
                  decoration: InputDecoration(labelText: 'Area'),
                ),
                TextField(
                  controller: bedroomsController,
                  decoration: InputDecoration(labelText: 'Number of Bedrooms'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: bathroomsController,
                  decoration: InputDecoration(labelText: 'Number of Bathrooms'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: nearbyController,
                  decoration: InputDecoration(
                      labelText: 'Nearby (Hospitals, Colleges, etc.)'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                final property = Property(
                  id: DateTime.now().toString(),
                  place: placeController.text,
                  area: areaController.text,
                  numberOfBedrooms: int.parse(bedroomsController.text),
                  numberOfBathrooms: int.parse(bathroomsController.text),
                  nearby: nearbyController.text,
                );
                controller.addProperty(property);
                Navigator.pop(context);
              },
              child: Text('Add Property'),
            ),
          ],
        );
      },
    );
  }

  void _showEditPropertyDialog(BuildContext context, Property property) {
    final placeController = TextEditingController(text: property.place);
    final areaController = TextEditingController(text: property.area);
    final bedroomsController =
        TextEditingController(text: property.numberOfBedrooms.toString());
    final bathroomsController =
        TextEditingController(text: property.numberOfBathrooms.toString());
    final nearbyController = TextEditingController(text: property.nearby);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Property'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: placeController,
                  decoration: InputDecoration(labelText: 'Place'),
                ),
                TextField(
                  controller: areaController,
                  decoration: InputDecoration(labelText: 'Area'),
                ),
                TextField(
                  controller: bedroomsController,
                  decoration: InputDecoration(labelText: 'Number of Bedrooms'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: bathroomsController,
                  decoration: InputDecoration(labelText: 'Number of Bathrooms'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: nearbyController,
                  decoration: InputDecoration(
                      labelText: 'Nearby (Hospitals, Colleges, etc.)'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                final updatedProperty = property.copyWith(
                  place: placeController.text,
                  area: areaController.text,
                  numberOfBedrooms: int.parse(bedroomsController.text),
                  numberOfBathrooms: int.parse(bathroomsController.text),
                  nearby: nearbyController.text,
                );
                controller.updateProperty(updatedProperty);
                Navigator.pop(context);
              },
              child: Text('Save Changes'),
            ),
          ],
        );
      },
    );
  }
}

class PropertyCard extends StatelessWidget {
  final Property property;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  const PropertyCard({
    Key? key,
    required this.property,
    required this.onDelete,
    required this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(property.place),
        subtitle: Text(
            'Area: ${property.area}, Bedrooms: ${property.numberOfBedrooms}, Bathrooms: ${property.numberOfBathrooms}, Nearby: ${property.nearby}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: onEdit,
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: onDelete,
            ),
          ],
        ),
      ),
    );
  }
}
