import 'package:jujiiz_architecture/testing_repository.dart';
import 'package:jujiiz_architecture/core/api_service.dart';
import 'package:jujiiz_architecture/core/result.dart';

class TestingRepositoryImpl extends TestingRepository {
  final APIService _apiService;

  TestingRepositoryImpl(APIService apiService) : _apiService = apiService;

  @override
  Future<Result<String>> requestBuilderName() {
    return _apiService.requestBuilderName();
  }
}
