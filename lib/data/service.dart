import 'package:get_it/get_it.dart';
import 'package:solid/data/repository/app_reposotry.dart';
final getIt=GetIt.instance;
void getItSetUp(){
  getIt.registerLazySingleton(() => AppRepository());
}