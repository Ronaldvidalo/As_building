import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AsbuldingFirebaseUser {
  AsbuldingFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AsbuldingFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AsbuldingFirebaseUser> asbuldingFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AsbuldingFirebaseUser>(
      (user) {
        currentUser = AsbuldingFirebaseUser(user);
        return currentUser!;
      },
    );
