import 'package:project_home/base/data/model/api_response.dart';
import 'package:project_home/data/network/app_api_resource.dart';
import 'package:retrofit/retrofit.dart';

@RestApi()
abstract class HomeNetworkDataSource {
  // factory HomeNetworkDataSource(Dio dio,{String baseUrl})= _HomeNetworkDataSource;

  @GET(homePath)
  Future<ApiResponse<String>> getDataHome();
}
