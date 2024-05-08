import 'package:equatable/equatable.dart';
import 'package:tdd_flutter/core/usecase/usecase.dart';

import '../../../../core/utils/typedef.dart';
import '../repositories/authentication_repository.dart';

class CreateUser extends UsecaseWithParams<void, CreateUserParams> {
  const CreateUser(this._repository);

  final AuthenticationRepository _repository;

  @override
  ResultFuture call(CreateUserParams params) async =>
      await _repository.createUser(
        createdAt: params.createdAt,
        name: params.name,
        avatar: params.avatar,
      );
}

class CreateUserParams extends Equatable {
  final String createdAt;
  final String name;
  final String avatar;

  const CreateUserParams({
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  const CreateUserParams.empty() : this(createdAt: '_empty.string', name: '_empty.string', avatar: '_empty.avatar');

  @override
  List<Object?> get props => [createdAt, name, avatar];
}
