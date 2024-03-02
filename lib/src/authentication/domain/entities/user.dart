import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int? id;
  final String? name;
  final String? createdAt;
  final String? avatar;

  User({this.id, this.name, this.createdAt, this.avatar});

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}