import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOMmw4cSgll9muUD_uaFu-0F-R4r9CD1Y',
    appId: '1:523980747506:android:e88eee0f164ebdb75f166b',
    messagingSenderId: '523980747506',
    projectId: 'flutter-chat-app-42c5e',
    storageBucket: 'flutter-chat-app-42c5e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQ-0vC0x8sw8DBUoCuiGiLJZ2deK_IQ1Q',
    appId: '1:523980747506:ios:ca394bc5465054345f166b',
    messagingSenderId: '523980747506',
    projectId: 'flutter-chat-app-42c5e',
    storageBucket: 'flutter-chat-app-42c5e.appspot.com',
    iosClientId:
        '523980747506-n9upldrnp3bk57s2c5dt8gu7e17aipgi.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatAppFlutterTest',
  );
}
