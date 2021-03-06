import 'dart:async';

import 'package:jujiiz_architecture/core/base/base_controller.dart';
import 'package:jujiiz_architecture/core/result.dart';
import 'package:jujiiz_architecture/testing_repository.dart';

class HomeController extends BaseController {
  final TestingRepository _testingRepository;

  HomeController(TestingRepository testingRepository)
      : _testingRepository = testingRepository;

  StreamController _builderNameStreamController = StreamController<String>();

  Stream<String> get builderNameStream => _builderNameStreamController.stream;

  StreamController isLoadingController = StreamController<bool>();

  getBuilderName() async {
    isLoadingController.sink.add(true);
    Result<String> result = await _testingRepository.requestBuilderName();
    if (result is Success<String>) {
      _builderNameStreamController.sink.add(result.result);
    }
    isLoadingController.sink.add(false);
  }

  @override
  init() {
    isLoading = isLoadingController.stream;
    getBuilderName();
  }

  @override
  dispose() {
    isLoadingController.close();
    _builderNameStreamController.close();
  }
}
