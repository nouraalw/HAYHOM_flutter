import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD4_0hJ0GW2IRTCwq70djiCQEd_yk39b5Q",
            authDomain: "hayhom-c88ac.firebaseapp.com",
            projectId: "hayhom-c88ac",
            storageBucket: "hayhom-c88ac.appspot.com",
            messagingSenderId: "569533529552",
            appId: "1:569533529552:web:7374d9dd9a4f71943dcdd5"));
  } else {
    await Firebase.initializeApp();
  }
}
