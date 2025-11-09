import 'package:fitnest/data/services/api/auth_service.dart';
import 'package:fitnest/data/services/api/firestore_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'services_providers.g.dart';

@riverpod
AuthService authService(Ref ref) => AuthService();

@riverpod
FirestoreService firestoreService(Ref ref) {
  return FirestoreService();
}
