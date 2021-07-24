import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/services/auth_services.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final authServicesProvider = Provider<AuthenticationService>((ref) {
  return AuthenticationService(ref.read(firebaseAuthProvider));
});

final StreamProvider<User?> authStateProvider = StreamProvider((ref) {
  return ref.watch(authServicesProvider).authStateChange;
});
