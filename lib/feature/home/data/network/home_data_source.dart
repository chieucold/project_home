import 'package:dio/dio.dart';
import 'package:project_home/feature/home/data/model/response/user_response.dart';
import 'package:retrofit/retrofit.dart';
part 'home_data_source.g.dart';

@RestApi()
abstract class HomeDataSource {
  factory HomeDataSource(Dio dio, {String baseUrl}) = _HomeDataSource;

  @GET('todos/1')
  Future<UserResponse> checkPhoneNumber();
}
