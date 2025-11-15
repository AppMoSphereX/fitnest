import 'package:cloud_firestore/cloud_firestore.dart';

class UserDto {
  final String id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? gender;
  final DateTime? dateOfBirth;
  final double? weight;
  final double? height;
  final String? goal;

  UserDto({
    required this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.weight,
    this.height,
    this.goal,
  });

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return UserDto(
      id: doc.id,
      email: data['email'] as String? ?? '',
      firstName: data['firstName'] as String?,
      lastName: data['lastName'] as String?,
      gender: data['gender'] as String?,
      dateOfBirth: data['dateOfBirth'] != null
          ? (data['dateOfBirth'] as Timestamp).toDate()
          : null,
      weight: data['weight'] != null
          ? (data['weight'] as num).toDouble()
          : null,
      height: data['height'] != null
          ? (data['height'] as num).toDouble()
          : null,
      goal: data['goal'] as String?,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'gender': gender,
      'dateOfBirth': dateOfBirth != null
          ? Timestamp.fromDate(dateOfBirth!)
          : null,
      'weight': weight,
      'height': height,
      'goal': goal,
    };
  }
}
