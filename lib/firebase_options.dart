// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
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
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAe73H-_QHh8TWTGs5yZzeZs7MHICRQtzk',
    appId: '1:485560841050:web:a7a65516b1b9b1ff213963',
    messagingSenderId: '485560841050',
    projectId: 'insta-clone-b6795',
    authDomain: 'insta-clone-b6795.firebaseapp.com',
    storageBucket: 'insta-clone-b6795.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_oW--QwCvuW-6aq_DzverpKXPNNlyKc4',
    appId: '1:485560841050:android:b9c593b711b697ab213963',
    messagingSenderId: '485560841050',
    projectId: 'insta-clone-b6795',
    storageBucket: 'insta-clone-b6795.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAG0u6Iys3QNUS1fg9HajPjE0KfDKD-qBM',
    appId: '1:485560841050:ios:6b6ea72dea18256b213963',
    messagingSenderId: '485560841050',
    projectId: 'insta-clone-b6795',
    storageBucket: 'insta-clone-b6795.appspot.com',
    iosBundleId: 'com.example.instaClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAG0u6Iys3QNUS1fg9HajPjE0KfDKD-qBM',
    appId: '1:485560841050:ios:cf1150969b948d60213963',
    messagingSenderId: '485560841050',
    projectId: 'insta-clone-b6795',
    storageBucket: 'insta-clone-b6795.appspot.com',
    iosBundleId: 'com.example.instaClone.RunnerTests',
  );
}
