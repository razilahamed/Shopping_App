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
    apiKey: 'AIzaSyC-hBzfHMKLP-wO3mVYV6RfNhgBuHkj6ec',
    appId: '1:1122299781:web:59953eaf1e492744545eec',
    messagingSenderId: '1122299781',
    projectId: 'onlinedelivery-15fcd',
    authDomain: 'onlinedelivery-15fcd.firebaseapp.com',
    storageBucket: 'onlinedelivery-15fcd.appspot.com',
    measurementId: 'G-C5DK57PYD3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBxT3vcgtxbbAvKUuALBnZbc4Pywn5NCI8',
    appId: '1:1122299781:android:4c0df2bf627c88cd545eec',
    messagingSenderId: '1122299781',
    projectId: 'onlinedelivery-15fcd',
    storageBucket: 'onlinedelivery-15fcd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCT08o9eY1r9NLIW1lsSJhMmgH5XaBI82E',
    appId: '1:1122299781:ios:42301628e37c843b545eec',
    messagingSenderId: '1122299781',
    projectId: 'onlinedelivery-15fcd',
    storageBucket: 'onlinedelivery-15fcd.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCT08o9eY1r9NLIW1lsSJhMmgH5XaBI82E',
    appId: '1:1122299781:ios:bc105e9446675fb0545eec',
    messagingSenderId: '1122299781',
    projectId: 'onlinedelivery-15fcd',
    storageBucket: 'onlinedelivery-15fcd.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}