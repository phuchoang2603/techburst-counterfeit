import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyABAeLHX6SHY6u-a56IKv2OpXKqqcVWRsg",
            authDomain: "refurbished-marketplace.firebaseapp.com",
            projectId: "refurbished-marketplace",
            storageBucket: "refurbished-marketplace.appspot.com",
            messagingSenderId: "412214950215",
            appId: "1:412214950215:web:636578de8fa6fc6f42f462",
            measurementId: "G-1D8KVQTBDP"));
  } else {
    await Firebase.initializeApp();
  }
}
