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
    apiKey: 'AIzaSyDI_GAWXlpBd7E3FKroR1_aW36uiXwdflo',
    appId: '1:341109022842:web:70c9e646d592a09f15dbc3',
    messagingSenderId: '341109022842',
    projectId: 'peaceful-garden-352712',
    authDomain: 'peaceful-garden-352712.firebaseapp.com',
    storageBucket: 'peaceful-garden-352712.appspot.com',
    measurementId: 'G-2084T28F1E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEkx4hgsMF72PaCLH0IRZLmLlGmrWjMWw',
    appId: '1:341109022842:android:7e6f3bb9a6519e6715dbc3',
    messagingSenderId: '341109022842',
    projectId: 'peaceful-garden-352712',
    storageBucket: 'peaceful-garden-352712.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD2Ml1Q8G-E-EoSP6inko92mWt8bp6C5D0',
    appId: '1:341109022842:ios:7661919842e5cd9215dbc3',
    messagingSenderId: '341109022842',
    projectId: 'peaceful-garden-352712',
    storageBucket: 'peaceful-garden-352712.appspot.com',
    androidClientId: '341109022842-99qh73q7fcalps1p0d7j4092lsc0e967.apps.googleusercontent.com',
    iosClientId: '341109022842-ffpfu2heo6chjbqplo2496o8ipqfmcma.apps.googleusercontent.com',
    iosBundleId: 'com.example.comandaSmart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD2Ml1Q8G-E-EoSP6inko92mWt8bp6C5D0',
    appId: '1:341109022842:ios:d29e1b52ffe1653015dbc3',
    messagingSenderId: '341109022842',
    projectId: 'peaceful-garden-352712',
    storageBucket: 'peaceful-garden-352712.appspot.com',
    androidClientId: '341109022842-99qh73q7fcalps1p0d7j4092lsc0e967.apps.googleusercontent.com',
    iosClientId: '341109022842-to7tbsevebtodep5ukhpjgma39ho8mn3.apps.googleusercontent.com',
    iosBundleId: 'com.example.comandaSmart.RunnerTests',
  );
}
