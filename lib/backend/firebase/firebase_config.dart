import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB9aZaWX_UJ0690IaKpA2RxpPjCsylco-Y",
            authDomain: "paavya-d9joeq.firebaseapp.com",
            projectId: "paavya-d9joeq",
            storageBucket: "paavya-d9joeq.appspot.com",
            messagingSenderId: "336809538774",
            appId: "1:336809538774:web:49ebd3f175835a7ba90577"));
  } else {
    await Firebase.initializeApp();
  }
}
