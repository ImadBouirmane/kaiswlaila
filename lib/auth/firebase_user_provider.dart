import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class KaisEtLeilaFirebaseUser {
  KaisEtLeilaFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

KaisEtLeilaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<KaisEtLeilaFirebaseUser> kaisEtLeilaFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<KaisEtLeilaFirebaseUser>(
        (user) => currentUser = KaisEtLeilaFirebaseUser(user));
