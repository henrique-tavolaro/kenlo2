import 'package:flutter/material.dart';
import 'package:kenlo2/infra/models/return_model.dart';
import 'package:kenlo2/presenter/pages/components/item_list_tile.dart';

class ItemsList extends StatelessWidget {
  final ReturnModel returnModel;

  const ItemsList({
    Key? key,
    required this.returnModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: returnModel.items.length,
        itemBuilder: (context, index) {
          final item = returnModel.items[index];

          return ItemsListTile(item: item);
        });
  }
}

