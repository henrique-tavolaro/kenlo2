import 'package:kenlo2/domain/entities/items_entity.dart';

class ReturnEntity {
  final int total;
  final List<ItemsEntity> items;

  ReturnEntity(
    this.total,
    this.items,
  );
}
