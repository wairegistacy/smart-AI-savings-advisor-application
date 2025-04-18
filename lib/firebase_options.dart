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
    apiKey: 'AIzaSyAC2SRS9ZEizBlfp48IQUU93b-NL4e9QpQ',
    appId: '1:626689669541:web:34aa7311e755c56f65d04c',
    messagingSenderId: '626689669541',
    projectId: 'smartsavingsadvisor-dcfb9',
    authDomain: 'smartsavingsadvisor-dcfb9.firebaseapp.com',
    storageBucket: 'smartsavingsadvisor-dcfb9.firebasestorage.app',
    measurementId: 'G-DXM85J76H9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAgEikpk8eZwAQ53183cEAja6BKeToaQo',
    appId: '1:626689669541:android:eaa9863f2ada6af165d04c',
    messagingSenderId: '626689669541',
    projectId: 'smartsavingsadvisor-dcfb9',
    storageBucket: 'smartsavingsadvisor-dcfb9.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCzpyWM-Eb2-YYem4jUILbeGcXl4_lywHs',
    appId: '1:626689669541:ios:a273aed55f50ac7e65d04c',
    messagingSenderId: '626689669541',
    projectId: 'smartsavingsadvisor-dcfb9',
    storageBucket: 'smartsavingsadvisor-dcfb9.firebasestorage.app',
    iosBundleId: 'com.example.smartAiSavingsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCzpyWM-Eb2-YYem4jUILbeGcXl4_lywHs',
    appId: '1:626689669541:ios:a273aed55f50ac7e65d04c',
    messagingSenderId: '626689669541',
    projectId: 'smartsavingsadvisor-dcfb9',
    storageBucket: 'smartsavingsadvisor-dcfb9.firebasestorage.app',
    iosBundleId: 'com.example.smartAiSavingsApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAC2SRS9ZEizBlfp48IQUU93b-NL4e9QpQ',
    appId: '1:626689669541:web:4478afa8c3f242b865d04c',
    messagingSenderId: '626689669541',
    projectId: 'smartsavingsadvisor-dcfb9',
    authDomain: 'smartsavingsadvisor-dcfb9.firebaseapp.com',
    storageBucket: 'smartsavingsadvisor-dcfb9.firebasestorage.app',
    measurementId: 'G-0BQ9D7J55B',
  );
}
