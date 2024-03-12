import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
      apiKey: "AIzaSyC04TIw2bCmui5AfwRQr6pSf89MBOXKyDM",
      authDomain: "aunt-flo-3.firebaseapp.com",
      projectId: "aunt-flo-3",
      storageBucket: "aunt-flo-3.appspot.com",
      messagingSenderId: "489825321370",
      appId: "1:489825321370:web:9697b319b32bef9c9cba23"
  );

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: "AIzaSyC04TIw2bCmui5AfwRQr6pSf89MBOXKyDM",
      authDomain: "aunt-flo-3.firebaseapp.com",
      projectId: "aunt-flo-3",
      storageBucket: "aunt-flo-3.appspot.com",
      messagingSenderId: "489825321370",
      appId: "1:489825321370:web:9697b319b32bef9c9cba23"
  );

  static const FirebaseOptions ios = FirebaseOptions(
      apiKey: "AIzaSyC04TIw2bCmui5AfwRQr6pSf89MBOXKyDM",
      authDomain: "aunt-flo-3.firebaseapp.com",
      projectId: "aunt-flo-3",
      storageBucket: "aunt-flo-3.appspot.com",
      messagingSenderId: "489825321370",
      appId: "1:489825321370:web:9697b319b32bef9c9cba23"
  );

}
