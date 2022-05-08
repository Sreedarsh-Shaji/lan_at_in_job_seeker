import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LanAtInFirebaseUser {
  LanAtInFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

LanAtInFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LanAtInFirebaseUser> lanAtInFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<LanAtInFirebaseUser>(
        (user) => currentUser = LanAtInFirebaseUser(user));
