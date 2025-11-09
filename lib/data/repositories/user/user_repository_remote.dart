import 'package:fitnest/data/mappers/user_mapper.dart';
import 'package:fitnest/data/services/api/firestore_service.dart';
import 'package:fitnest/data/services/api/models/user_dto/user_dto.dart';
import 'package:fitnest/domain/models/user/user.dart';
import 'package:fitnest/domain/repositories/user_repository.dart';
import 'package:fitnest/utils/result.dart';

class UserRepositoryRemote implements UserRepository {
  final FirestoreService _firestoreService;

  UserRepositoryRemote({required FirestoreService firestoreService})
    : _firestoreService = firestoreService;

  @override
  Future<Result<User?>> getUserProfile(String userId) async {
    final result = await _firestoreService.getUserProfile(userId);
    switch (result) {
      case Ok():
        final userDto = (result as Ok).value as UserDto?;
        return Result.ok(userDto?.toDomain());
      case Error():
        return Result.error((result as Error).error);
    }
  }

  @override
  Future<Result<void>> createUserProfile(String userId, User user) async {
    final userDto = user.toDto();
    return await _firestoreService.createUserProfile(userId, userDto);
  }

  @override
  Future<Result<void>> updateUserProfile(String userId, User user) async {
    final userDto = user.toDto();
    return await _firestoreService.updateUserProfile(userId, userDto);
  }
}
