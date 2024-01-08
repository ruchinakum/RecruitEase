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
    apiKey: 'AIzaSyA88ud7pJnOl-cYsYkCjLIwPYrE-RB_31s',
    appId: '1:171502442392:web:4ba111667358f4cc647ded',
    messagingSenderId: '171502442392',
    projectId: 'recruitease-dt01',
    authDomain: 'recruitease-dt01.firebaseapp.com',
    storageBucket: 'recruitease-dt01.appspot.com',
    measurementId: 'G-S05CLMMHXM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDyvg5tLcwo9bCWG5cvYhkVOS_qoMb98z4',
    appId: '1:171502442392:android:f8eb1674d8f854b2647ded',
    messagingSenderId: '171502442392',
    projectId: 'recruitease-dt01',
    storageBucket: 'recruitease-dt01.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-0DLG_QN6HNCUF7mXG32G9ZwJUn85_W0',
    appId: '1:171502442392:ios:4248a22e4d25bbf3647ded',
    messagingSenderId: '171502442392',
    projectId: 'recruitease-dt01',
    storageBucket: 'recruitease-dt01.appspot.com',
    iosClientId: '171502442392-4qp97lh85c00ues91fn23i2mumk0o7am.apps.googleusercontent.com',
    iosBundleId: 'com.example.recruiteaseApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD-0DLG_QN6HNCUF7mXG32G9ZwJUn85_W0',
    appId: '1:171502442392:ios:01758d8d69d334bb647ded',
    messagingSenderId: '171502442392',
    projectId: 'recruitease-dt01',
    storageBucket: 'recruitease-dt01.appspot.com',
    iosClientId: '171502442392-mnokij2gbquri7aqmfr8h4i67224tcph.apps.googleusercontent.com',
    iosBundleId: 'com.example.recruiteaseApp.RunnerTests',
  );
}
