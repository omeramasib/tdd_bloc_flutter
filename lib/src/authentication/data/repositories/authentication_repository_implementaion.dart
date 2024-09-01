import 'package:dartz/dartz.dart';
import 'package:tdd_flutter/core/errors/exceptions.dart';
import 'package:tdd_flutter/core/errors/failure.dart';
import 'package:tdd_flutter/src/authentication/domain/repositories/authentication_repository.dart';

import '../../../../core/utils/typedef.dart';
import '../../domain/entities/user.dart';
import '../datasources/authentication_remote_data_source.dart';

class AuthenticationRepositoryImplementaion
    implements AuthenticationRepository {
  const AuthenticationRepositoryImplementaion(this._remoteDataSource);

  final AuthenticationRemoteDataSource _remoteDataSource;
  @override
  ResultVoid createUser(
      {required String createdAt,
      required String name,
      required String avatar}) async {
    try {
      await _remoteDataSource.createUser(
          createdAt: createdAt, name: name, avatar: avatar);
      return const Right(null);
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }

  @override
  ResultFuture<List<User>> getUsers() async {
    try {
      final result = await _remoteDataSource.getUsers();
      return Right(result);
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }
}
