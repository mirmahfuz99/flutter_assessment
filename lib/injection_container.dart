import 'package:dio/dio.dart';
import 'package:flutter_assessment/core/data/remote/api_endpoints.dart';
import 'package:flutter_assessment/core/data/remote/dio_client.dart';
import 'package:flutter_assessment/features/app_theme/bloc/theme_bloc.dart';
import 'package:flutter_assessment/features/home/data/data_source/remote/item_remote_data_source.dart';
import 'package:flutter_assessment/features/home/data/repository/item_repository_impl.dart';
import 'package:flutter_assessment/features/home/domain/repository/item_repository.dart';
import 'package:flutter_assessment/features/home/domain/usecases/get_item.dart';
import 'package:flutter_assessment/features/home/presentation/bloc/item_bloc.dart';
import 'package:flutter_assessment/features/item_details/data/data_source/remote/item_details_data_source.dart';
import 'package:flutter_assessment/features/item_details/data/repository/item_details_repository_impl.dart';
import 'package:flutter_assessment/features/item_details/domain/repository/item_details_repository.dart';
import 'package:flutter_assessment/features/item_details/domain/usecases/get_item_details.dart';
import 'package:flutter_assessment/features/item_details/presentation/bloc/item_details_bloc.dart';
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

  sl.registerSingleton<ItemDetailsDataSource>(ItemDetailsDataSourceImpl(dioClient: sl()));
  sl.registerSingleton<ItemDetailsRepository>(ItemDetailsRepositoryImpl(itemDetailsDataSource: sl()));

  // UseCases
  sl.registerSingleton<GetItemUseCase>(GetItemUseCase(sl()));
  sl.registerSingleton<GetItemDetailsUseCase>(GetItemDetailsUseCase(sl()));

  //Blocs
  sl.registerFactory<ThemeBloc>(()=> ThemeBloc());
  sl.registerFactory<ItemBloc>(()=> ItemBloc(sl()));
  sl.registerFactory<ItemDetailsBloc>(()=> ItemDetailsBloc(sl()));


}