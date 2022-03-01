// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBT5jtHY-nYLHQAEDH4LlEKn3VxKettPcg',
    appId: '1:204987519318:web:463e0cd0a20d6c7f3a06f7',
    messagingSenderId: '204987519318',
    projectId: 'barbearia-real',
    authDomain: 'barbearia-real.firebaseapp.com',
    databaseURL: 'https://barbearia-real.firebaseio.com',
    storageBucket: 'barbearia-real.appspot.com',
    measurementId: 'G-578P8B9G6X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBiGdn6-XvXDVLjvqv6QUujG7x2gPPRuY4',
    appId: '1:204987519318:android:8b294df1c0fca5723a06f7',
    messagingSenderId: '204987519318',
    projectId: 'barbearia-real',
    databaseURL: 'https://barbearia-real.firebaseio.com',
    storageBucket: 'barbearia-real.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfoG3RwHdtMcgjZGD18nZhaGMTt2UJ310',
    appId: '1:204987519318:ios:104ac0f40bcf9f243a06f7',
    messagingSenderId: '204987519318',
    projectId: 'barbearia-real',
    databaseURL: 'https://barbearia-real.firebaseio.com',
    storageBucket: 'barbearia-real.appspot.com',
    androidClientId: '204987519318-86j20se3ghqj8qt3sins1ncg0fo2jq7b.apps.googleusercontent.com',
    iosClientId: '204987519318-vav3j70k3m4ttt8i1r502lu1649pt54h.apps.googleusercontent.com',
    iosBundleId: 'n',
  );
}