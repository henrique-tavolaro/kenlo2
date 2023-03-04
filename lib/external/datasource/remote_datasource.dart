


import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kenlo2/infra/i_datasource/i_remote_datasource.dart';
import 'package:kenlo2/infra/models/return_model.dart';
import 'package:kenlo2/main/errors/failure.dart';
import 'package:kenlo2/main/network/i_client.dart';

@Injectable(as: IRemoteDatasource)
class RemoteDatasource implements IRemoteDatasource {

  final IHttpClient client;

  RemoteDatasource(this.client);

  @override
  Future<ReturnModel> getItems() async {
    try {
      final response = await client.get(params: HttpGetParams(path: '/lista'));

      if(response.statusCode == 200){
        return ReturnModel.fromJson(response.data);
      }
      throw const ServerException(
        message: 'Ocorreu um erro',
        code: '500',
      );
    } on DioError catch (e) {

      throw ServerException(
        message: 'Ocorreu um erro',
        code: e.response?.statusCode?.toString() ?? '',
      );
    }
  }

}