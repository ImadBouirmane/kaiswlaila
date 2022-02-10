import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class KaisWLailaFirebaseUser {
  KaisWLailaFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

KaisWLailaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<KaisWLailaFirebaseUser> kaisWLailaFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<KaisWLailaFirebaseUser>(
            (user) => currentUser = KaisWLailaFirebaseUser(user));
