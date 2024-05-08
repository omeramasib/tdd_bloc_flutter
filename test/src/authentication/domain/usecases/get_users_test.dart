import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_flutter/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:tdd_flutter/src/authentication/domain/usecases/get_users.dart';

import 'authentication_repository.mock.dart';


void main() {
  late AuthenticationRepository repository;

  late GetUsers usecase;

  setUp(() {
    repository = MockAuthRepo();
    usecase = GetUsers(repository);
  });
}
