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
    apiKey: 'AIzaSyAbzq_-0cca09hzpIgSq4gyrvxk1BjcIK8',
    appId: '1:676021266438:web:4d42b7ee1e1c9ed25abb87',
    messagingSenderId: '676021266438',
    projectId: 'exfai-7053c',
    authDomain: 'exfai-7053c.firebaseapp.com',
    storageBucket: 'exfai-7053c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzuX2EDWt6SHdeMtNUTEC9W-8LZd7UDqI',
    appId: '1:676021266438:android:36c3d73620ca46825abb87',
    messagingSenderId: '676021266438',
    projectId: 'exfai-7053c',
    storageBucket: 'exfai-7053c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBu0lxr0Q9H4dr3TxAKZFU6zYAUId_GIEw',
    appId: '1:676021266438:ios:83e075bcdad733e85abb87',
    messagingSenderId: '676021266438',
    projectId: 'exfai-7053c',
    storageBucket: 'exfai-7053c.appspot.com',
    iosClientId: '676021266438-97smb2p2m8el3e9kcomnsu8v33m9pmrk.apps.googleusercontent.com',
    iosBundleId: 'com.exfai.exfai',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBu0lxr0Q9H4dr3TxAKZFU6zYAUId_GIEw',
    appId: '1:676021266438:ios:83e075bcdad733e85abb87',
    messagingSenderId: '676021266438',
    projectId: 'exfai-7053c',
    storageBucket: 'exfai-7053c.appspot.com',
    iosClientId: '676021266438-97smb2p2m8el3e9kcomnsu8v33m9pmrk.apps.googleusercontent.com',
    iosBundleId: 'com.exfai.exfai',
  );
}
