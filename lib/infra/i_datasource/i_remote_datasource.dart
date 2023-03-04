

import 'package:kenlo2/infra/models/return_model.dart';

abstract class IRemoteDatasource {
  Future<ReturnModel> getItems();
}