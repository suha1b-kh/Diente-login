// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBVPidZ7RfLmVnxOfCXCLKFFatuxTjiddk',
    appId: '1:908430930041:web:bdb46de4c89059ec78a4a8',
    messagingSenderId: '908430930041',
    projectId: 'test-a41e7',
    authDomain: 'test-a41e7.firebaseapp.com',
    storageBucket: 'test-a41e7.appspot.com',
    measurementId: 'G-JSG334P6PX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHUm-vurb7NQlvvNqA0RR9h2n-cjcSvSI',
    appId: '1:908430930041:android:bea0533d29f709d778a4a8',
    messagingSenderId: '908430930041',
    projectId: 'test-a41e7',
    storageBucket: 'test-a41e7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDEgQkQWMha_akLXfmryb2Xp8r8cHICx0s',
    appId: '1:908430930041:ios:399cc1262da5e27e78a4a8',
    messagingSenderId: '908430930041',
    projectId: 'test-a41e7',
    storageBucket: 'test-a41e7.appspot.com',
    iosBundleId: 'com.example.firebaseTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDEgQkQWMha_akLXfmryb2Xp8r8cHICx0s',
    appId: '1:908430930041:ios:399cc1262da5e27e78a4a8',
    messagingSenderId: '908430930041',
    projectId: 'test-a41e7',
    storageBucket: 'test-a41e7.appspot.com',
    iosBundleId: 'com.example.firebaseTest',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBVPidZ7RfLmVnxOfCXCLKFFatuxTjiddk',
    appId: '1:908430930041:web:ac36ffa3c9ee53c378a4a8',
    messagingSenderId: '908430930041',
    projectId: 'test-a41e7',
    authDomain: 'test-a41e7.firebaseapp.com',
    storageBucket: 'test-a41e7.appspot.com',
    measurementId: 'G-V5YLP39MVW',
  );
}
