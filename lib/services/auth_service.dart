import 'package:airplane/models/user_model.dart';
import 'package:airplane/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signIn(
      {required String email, required String password}) async {
    try {
      //
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      UserModel user =
          await UserService().getUserById(userCredential.user!.uid);
      return user;
    } catch (e) {
      //
      throw e;
    }
  }

  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
    required String phoneNumber,
  }) async {
    try {
      // add firebase authentication
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // save to firestore
      UserModel user = UserModel(
        id: userCredential.user!.uid,
        email: email,
        name: name,
        phoneNumber: phoneNumber,
        balance: 500000,
      );

      await UserService().setUser(user);

      return user;
    } catch (e) {
      //
      throw e;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      //
      throw e;
    }
  }
}
