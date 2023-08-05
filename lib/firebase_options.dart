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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDR8igbapoZnt5LAIuc7B2XDzt4pWCg0G0',
    appId: '1:2813311780:web:79f07308fc609391b091b1',
    messagingSenderId: '2813311780',
    projectId: 'bots-and-bids',
    authDomain: 'bots-and-bids.firebaseapp.com',
    storageBucket: 'bots-and-bids.appspot.com',
    measurementId: 'G-5TWDL0CGYN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD_WSpfKZZKTnSVmSfX4X2HIaVd7c7Ym2o',
    appId: '1:2813311780:android:1628af85ec2346e8b091b1',
    messagingSenderId: '2813311780',
    projectId: 'bots-and-bids',
    storageBucket: 'bots-and-bids.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyALOp5fLD9hOxiI3TzzhSH0IZg0L76Y9zA',
    appId: '1:2813311780:ios:11a41087e8807eb8b091b1',
    messagingSenderId: '2813311780',
    projectId: 'bots-and-bids',
    storageBucket: 'bots-and-bids.appspot.com',
    iosClientId: '2813311780-1f7obmelr95afthnjpeeeer5lbehcrna.apps.googleusercontent.com',
    iosBundleId: 'com.botbabes.botsNBids',
  );
}
