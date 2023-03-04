import 'package:flutter/material.dart';
import 'package:kenlo2/domain/entities/items_entity.dart';

class ItemsListTile extends StatelessWidget {

  final ItemsEntity item;

  const ItemsListTile({Key? key, required this.item,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: const Color(0xFF4270c7),
        child: Text(
          item.cidade[0],
          style: const TextStyle(fontSize: 28),
        ),
      ),
      title: Text(item.cidade),
      subtitle: Text('Lat: ${item.latitude}, Long: ${item.longitude}'),
    );
  }
}
