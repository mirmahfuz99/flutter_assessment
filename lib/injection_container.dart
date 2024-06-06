import 'package:dio/dio.dart';
import 'package:flutter_assessment/core/data/remote/api_endpoints.dart';
import 'package:flutter_assessment/core/data/remote/dio_client.dart';
import 'package:flutter_assessment/features/home/data/data_source/remote/item_remote_data_source.dart';
import 'package:flutter_assessment/features/home/data/repository/item_repository_impl.dart';
import 'package:flutter_assessment/features/home/domain/repository/item_repository.dart';
import 'package:flutter_assessment/features/home/domain/usecases/get_item.dart';
import 'package:flutter_assessment/features/home/presentation/bloc/item_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
String get baseUrl => APIPathHelper.baseUrl;

Future<void> initializeDependencies() async {


  // Dio
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<DioClient>(DioClient(baseUrl: baseUrl,dio: sl()));


  // Dependencies
  sl.registerSingleton<ItemRemoteDataSource>(ItemDataSourceImpl(dioClient: sl()));
  sl.registerSingleton<ItemRepository>(ItemRepositoryImpl(itemRemoteDataSource: sl()));

  // UseCases
  sl.registerSingleton<GetItemUseCase>(GetItemUseCase(sl()));

  //Blocs
  sl.registerFactory<ItemBloc>(()=> ItemBloc(sl())
  );


}