import 'package:fitnest/domain/models/user/user.dart';
import 'package:fitnest/utils/result.dart';

abstract class UserRepository {
  Future<Result<User?>> getUserProfile();
  Future<Result<void>> createUserProfile(User user);
  Future<Result<void>> updateUserProfile(User user);
}
