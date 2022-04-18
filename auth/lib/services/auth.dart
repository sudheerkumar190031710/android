import 'package:auth/screens/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthService{
  final FirebaseAuth _auth=FirebaseAuth.instance;

  User _userFromFirebaseUser(User user){
    return user!=null? User(uid: user.uid)
  }

  Future signInAnon() async{
    try{

      UserCredential result = await _auth.signInAnonymously();
      User? user=result.user;
      return user;
    }

    catch(e){
      print(e.toString());
      return null;

    }
  }
}