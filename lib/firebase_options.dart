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
    apiKey: 'AIzaSyBGnTzFUjuoJVKb7KeEwEviHTjOPSqdyQc',
    appId: '1:437532373987:web:c3499201912b951f87e6d6',
    messagingSenderId: '437532373987',
    projectId: 'jewellerymangement',
    authDomain: 'jewellerymangement.firebaseapp.com',
    storageBucket: 'jewellerymangement.appspot.com',
    measurementId: 'G-NHEYZSFS4K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAMwLF3ANJOXNNkzgRjmPd1XxMH0p3tJno',
    appId: '1:437532373987:android:b2cee5cae3c6d3c187e6d6',
    messagingSenderId: '437532373987',
    projectId: 'jewellerymangement',
    storageBucket: 'jewellerymangement.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDUAM4B6FJAAn-cIF7Y1puUzRpQ8H5Peaw',
    appId: '1:437532373987:ios:2cf794f2deef55b287e6d6',
    messagingSenderId: '437532373987',
    projectId: 'jewellerymangement',
    storageBucket: 'jewellerymangement.appspot.com',
    iosBundleId: 'com.example.jewelleryApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDUAM4B6FJAAn-cIF7Y1puUzRpQ8H5Peaw',
    appId: '1:437532373987:ios:2cf794f2deef55b287e6d6',
    messagingSenderId: '437532373987',
    projectId: 'jewellerymangement',
    storageBucket: 'jewellerymangement.appspot.com',
    iosBundleId: 'com.example.jewelleryApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBGnTzFUjuoJVKb7KeEwEviHTjOPSqdyQc',
    appId: '1:437532373987:web:1e8011ba43f3b87987e6d6',
    messagingSenderId: '437532373987',
    projectId: 'jewellerymangement',
    authDomain: 'jewellerymangement.firebaseapp.com',
    storageBucket: 'jewellerymangement.appspot.com',
    measurementId: 'G-GSJP60H433',
  );
}