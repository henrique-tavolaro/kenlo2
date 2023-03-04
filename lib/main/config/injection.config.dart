// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kenlo2/domain/i_repositories/i_repository.dart' as _i7;
import 'package:kenlo2/domain/use_cases/get_items_use_case.dart' as _i9;
import 'package:kenlo2/external/datasource/remote_datasource.dart' as _i6;
import 'package:kenlo2/infra/i_datasource/i_remote_datasource.dart' as _i5;
import 'package:kenlo2/infra/repositories/repository.dart' as _i8;
import 'package:kenlo2/main/network/client.dart' as _i4;
import 'package:kenlo2/main/network/i_client.dart' as _i3;
import 'package:kenlo2/presenter/cubit/get_items_cubit.dart' as _i10;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.IHttpClient>(_i4.HttpClient());
  gh.factory<_i5.IRemoteDatasource>(
      () => _i6.RemoteDatasource(gh<_i3.IHttpClient>()));
  gh.factory<_i7.IRepository>(
      () => _i8.Repository(gh<_i5.IRemoteDatasource>()));
  gh.factory<_i9.IGetItemUseCase>(
      () => _i9.GetItemsUseCase(gh<_i7.IRepository>()));
  gh.factory<_i10.GetItemsCubit>(
      () => _i10.GetItemsCubit(gh<_i9.IGetItemUseCase>()));
  return getIt;
}
