import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitnest/data/services/api/models/user_dto/user_dto.dart';
import 'package:fitnest/utils/result.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static const String usersCollection = 'users';

  Future<Result<UserDto?>> getUserProfile(String userId) async {
    try {
      final doc = await _firestore.collection(usersCollection).doc(userId).get();
      if (!doc.exists) {
        return Result.ok(null);
      }
      final userDto = UserDto.fromFirestore(doc);
      return Result.ok(userDto);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> createUserProfile(String userId, UserDto userDto) async {
    try {
      await _firestore
          .collection(usersCollection)
          .doc(userId)
          .set(userDto.toFirestore());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> updateUserProfile(String userId, UserDto userDto) async {
    try {
      await _firestore
          .collection(usersCollection)
          .doc(userId)
          .update(userDto.toFirestore());
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
