import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int? id;
  final String? name;
  final String? createdAt;
  final String? avatar;

  const User({this.id, this.name, this.createdAt, this.avatar});

  const User.empty() : this(id: 1, createdAt: '_empty.createdAt', name: '_empty.name', avatar: '_empty.avatar');

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}