import 'package:fitnest/data/mappers/enum_mapper.dart';
import 'package:fitnest/data/services/api/models/user_dto/user_dto.dart';
import 'package:fitnest/domain/models/user/goal.dart';
import 'package:fitnest/domain/models/user/user.dart';

extension UserDtoMapper on UserDto {
  User toDomain() {
    return User(
      email: email,
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      dateOfBirth: dateOfBirth,
      weight: weight,
      height: height,
      goal: goal?.toEnum(Goal.values, fallback: Goal.improveShape),
    );
  }
}

extension UserMapper on User {
  UserDto toDto() {
    return UserDto(
      email: email,
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      dateOfBirth: dateOfBirth,
      weight: weight,
      height: height,
      goal: goal?.toDto(),
    );
  }
}
