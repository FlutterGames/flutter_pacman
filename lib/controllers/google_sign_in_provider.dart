import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier{

  var googleSignIn = GoogleSignIn();

  GoogleSignInAccount get user => _user!;

  GoogleSignInAccount? _user;

  Future googleLogin() async {
     final googleUser = await googleSignIn.signIn();
     if(googleUser == null) return;

     _user = googleUser;

     final googleAuth = await googleUser.authentication;

     print("accessToken => ${googleAuth.accessToken}" );
     print("idToken => ${googleAuth.idToken}");

     // final credential = GoogleAuthProvider.credential(
     //   accessToken: googleAuth.accessToken,
     //   idToken: googleAuth.idToken
     // );
     //
     // await FirebaseAuth.instance.signInWithCredential(credential);
  }
}