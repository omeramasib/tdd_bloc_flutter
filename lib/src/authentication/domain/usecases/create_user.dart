import '../../../../core/utils/typedef.dart';
import '../repositories/authentication_repository.dart';

class CreateUser {
 const CreateUser(this._repository);

  final AuthenticationRepository _repository;

 ResultVoid createUser({
   required String createdAt,
   required String name,
   required String avatar,
 }) async => await _repository.createUser(
       createdAt: createdAt,
       name: name,
       avatar: avatar,
     );
}