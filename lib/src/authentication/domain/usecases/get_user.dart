import 'package:tdd_flutter/core/usecase/usecase.dart';
import 'package:tdd_flutter/src/authentication/domain/entities/user.dart';

import '../../../../core/utils/typedef.dart';
import '../repositories/authentication_repository.dart';

class GetUsers extends UsecaseWithoutParams<List<User>> {
  const GetUsers(this._repository);

  final AuthenticationRepository _repository;

  @override
  ResultFuture<List<User>> call() async => await _repository.getUsers();
}