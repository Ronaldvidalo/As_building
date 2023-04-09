import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDkADBYmFJ29wXYvrgQ7V7pHj_doW6PQkA",
            authDomain: "graceful-creek-371117.firebaseapp.com",
            projectId: "graceful-creek-371117",
            storageBucket: "graceful-creek-371117.appspot.com",
            messagingSenderId: "560435698902",
            appId: "1:560435698902:web:4cc2c5404132929943fd77"));
  } else {
    await Firebase.initializeApp();
  }
}
