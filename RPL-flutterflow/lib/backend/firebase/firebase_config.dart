import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC6N8pX6K2fu6ziRlOeSunCTbyJ8aiGmws",
            authDomain: "tanikita-2178e.firebaseapp.com",
            projectId: "tanikita-2178e",
            storageBucket: "tanikita-2178e.appspot.com",
            messagingSenderId: "1001189041631",
            appId: "1:1001189041631:web:d5bad4078372a5f1b2906a"));
  } else {
    await Firebase.initializeApp();
  }
}
