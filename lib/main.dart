import 'package:flutter/material.dart';
import 'package:jujiiz_architecture/core/api_service.dart';
import 'package:jujiiz_architecture/core/jujiiz_app.dart';
import 'package:jujiiz_architecture/testing_repository.dart';
import 'package:jujiiz_architecture/testing_repository_impl.dart';
import 'package:provider/provider.dart';

void main() {
  final APIService apiService = APIService(endpoint: '');

  runApp(
    MultiProvider(
      providers: [
        Provider<TestingRepository>(
            create: (context) => TestingRepositoryImpl(apiService))
      ],
      child: JuJiizApp(),
    ),
  );
}
