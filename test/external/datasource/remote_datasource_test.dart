import 'package:flutter_test/flutter_test.dart';
import 'package:kenlo2/external/datasource/remote_datasource.dart';
import 'package:kenlo2/infra/models/items_model.dart';
import 'package:kenlo2/infra/models/return_model.dart';
import 'package:kenlo2/main/errors/failure.dart';
import 'package:kenlo2/main/network/client.dart';
import 'package:kenlo2/main/network/i_client.dart';
import 'package:mocktail/mocktail.dart';

class HttpClientMock extends Mock implements HttpClient {}

class HttpGetParamsFake extends Fake implements HttpGetParams {}

const lista = ReturnModel(
  total: 10,
  items: [
    ItemsModel(
      id: 1,
      cidade: 'Campinas',
      longitude: -22.8951606,
      latitude: -47.1711205,
    ),
    ItemsModel(
      id: 2,
      cidade: 'Valinhos',
      longitude: -22.9860169,
      latitude: -47.0888407,
    ),
  ],
);

const resultJson = {
  "total": 10,
  "items": [
    {
      "id": 1,
      "cidade": "Campinas",
      "latitude": -22.8951606,
      "longitude": -47.171120511
    },
    {
      "id": 2,
      "cidade": "Valinhos",
      "latitude": -22.9860169,
      "longitude": -47.0888407
    }
  ]
};

void main() {
  final client = HttpClientMock();

  late RemoteDatasource sut;

  setUp(() {
    sut = RemoteDatasource(client);
    registerFallbackValue(HttpGetParamsFake());
  });

  group('lista', () {
    test('should return ReturnModel', () async {
      when(() => client.get(params: any(named: 'params'))).thenAnswer(
        (_) async => HttpResponse(
          headers: null,
          statusCode: 200,
          data: resultJson,
        ),
      );

      final result = await sut.getItems();

      expect(result, isA<ReturnModel>());
    });

    test('should throw server exception with code different from 200',
        () async {
      when(() => client.get(params: any(named: 'params'))).thenAnswer(
        (_) async => HttpResponse(
          headers: null,
          statusCode: 500,
          data: '',
        ),
      );

      expect(() async => await sut.getItems(), throwsA(isA<ServerException>()));
    });
  });
}
