import 'package:jujiiz_architecture/core/result.dart';

abstract class TestingRepository {
  Future<Result<String>> requestBuilderName();
}
