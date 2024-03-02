import 'package:dartz/dartz.dart';
import 'package:tdd_flutter/src/authentication/domain/entities/user.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  Future<Either> createUser({
    required String createdAt,
    required String name,
    required String avatar,
});

  Future<List<User>> getUsers();
}