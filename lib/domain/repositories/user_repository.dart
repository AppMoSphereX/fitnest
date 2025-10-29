import 'package:fitnest/domain/models/user/user.dart';
import 'package:fitnest/utils/result.dart';

abstract class UserRepository {
  Future<Result<User?>> getUserProfile(String userId);
  Future<Result<void>> createUserProfile(String userId, User user);
  Future<Result<void>> updateUserProfile(String userId, User user);
}


