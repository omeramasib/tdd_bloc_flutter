import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_flutter/src/authentication/data/models/user_model.dart';
import 'package:tdd_flutter/src/authentication/domain/entities/user.dart';

void main() {
  test('should be a subclass of [User] entity', () {
    // Arrange
    const tUserModel = UserModel.empty();
    // Act

    // Assert
    expect(tUserModel, isA<User>());
});
    group('fromMap', () {
      test('should return a [UserModel] with the right data', ()  {
        // Arrange
        final tJson = File('test/fixures/user.json').readAsStringSync();
        print(tJson);
        // Act
        // final result = UserModel.fromMap(tJson);
      });
    });
}
