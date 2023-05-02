import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyATjR78V747CFaD4bMJ2X7E3UOadoWPqgU",
            authDomain: "languageapp-75ca0.firebaseapp.com",
            projectId: "languageapp-75ca0",
            storageBucket: "languageapp-75ca0.appspot.com",
            messagingSenderId: "165577240374",
            appId: "1:165577240374:web:55e12af67611350d808d97",
            measurementId: "G-5L5X53LXD1"));
  } else {
    await Firebase.initializeApp();
  }
}
