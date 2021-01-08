import 'package:jujiiz_architecture/core/constants.dart';
import 'package:jujiiz_architecture/core/result.dart';
import 'package:meta/meta.dart';

class APIService {
  final String _endpoint;

  APIService({@required endpoint}) : _endpoint = endpoint;

  Future<Result<String>> requestBuilderName() {
    return Future.value(Success(builder_name));
  }
}
