import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with [Firebase.initializeApp].
///
/// This is a placeholder file to enable compilation before running `flutterfire configure`.
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macOS - '
          'you can reconfigure this by running the FlutterFire CLI.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for Windows - '
          'you can reconfigure this by running the FlutterFire CLI.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for Linux - '
          'you can reconfigure this by running the FlutterFire CLI.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'dummy-api-key-web',
    appId: '1:1234567890:web:dummy',
    messagingSenderId: '1234567890',
    projectId: 'dhc-week1-placeholder',
    authDomain: 'dhc-week1-placeholder.firebaseapp.com',
    storageBucket: 'dhc-week1-placeholder.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'dummy-api-key-android',
    appId: '1:1234567890:android:dummy',
    messagingSenderId: '1234567890',
    projectId: 'dhc-week1-placeholder',
    storageBucket: 'dhc-week1-placeholder.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'dummy-api-key-ios',
    appId: '1:1234567890:ios:dummy',
    messagingSenderId: '1234567890',
    projectId: 'dhc-week1-placeholder',
    storageBucket: 'dhc-week1-placeholder.appspot.com',
    iosBundleId: 'com.example.week1',
  );
}
