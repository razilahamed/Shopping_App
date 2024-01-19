import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  getCurrentUser() async {
    return await _auth.currentUser;
  }

  Future SignOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future deleteUser() async {
    User? user = await FirebaseAuth.instance.currentUser;
    user?.delete();
  }
}
