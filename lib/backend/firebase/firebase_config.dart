import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD40I6-AoIuwyYWewFWTF2r1p2MX-VPVew",
            authDomain: "banorte-hackaton-dhbs25.firebaseapp.com",
            projectId: "banorte-hackaton-dhbs25",
            storageBucket: "banorte-hackaton-dhbs25.appspot.com",
            messagingSenderId: "938543457578",
            appId: "1:938543457578:web:6edda16a1f5084c2cf2a53"));
  } else {
    await Firebase.initializeApp();
  }
}
