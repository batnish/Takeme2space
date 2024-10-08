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
    apiKey: 'AIzaSyDt5seQGxKQ8VU-qoWe5NPJEmMKMC9fIcc',
    appId: '1:60040423666:web:4c9b4cbc359d0e6b65886b',
    messagingSenderId: '60040423666',
    projectId: 'welcome2space-ab022',
    authDomain: 'welcome2space-ab022.firebaseapp.com',
    storageBucket: 'welcome2space-ab022.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJ7yqm3xJ04rvAOCZHVBnFwVqu9u5pp2M',
    appId: '1:60040423666:android:701c138a009d661f65886b',
    messagingSenderId: '60040423666',
    projectId: 'welcome2space-ab022',
    storageBucket: 'welcome2space-ab022.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbbWL0GCvOR7IIH2vw8sO-VYMgNqf4BqY',
    appId: '1:60040423666:ios:84a4d09ef45db2af65886b',
    messagingSenderId: '60040423666',
    projectId: 'welcome2space-ab022',
    storageBucket: 'welcome2space-ab022.appspot.com',
    iosBundleId: 'com.example.spacelogin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbbWL0GCvOR7IIH2vw8sO-VYMgNqf4BqY',
    appId: '1:60040423666:ios:84a4d09ef45db2af65886b',
    messagingSenderId: '60040423666',
    projectId: 'welcome2space-ab022',
    storageBucket: 'welcome2space-ab022.appspot.com',
    iosBundleId: 'com.example.spacelogin',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDt5seQGxKQ8VU-qoWe5NPJEmMKMC9fIcc',
    appId: '1:60040423666:web:a4084d6e2ed94ae165886b',
    messagingSenderId: '60040423666',
    projectId: 'welcome2space-ab022',
    authDomain: 'welcome2space-ab022.firebaseapp.com',
    storageBucket: 'welcome2space-ab022.appspot.com',
  );
}
