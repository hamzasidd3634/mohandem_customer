import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (kIsWeb) {
      // Web
      return const FirebaseOptions(
        appId: '1:380530648235:android:ab9b1835887ebd46e703ee',
        apiKey: 'AIzaSyB3LaM67UgNQOEtiyZPutLIbHhCNQdkXXM',
        projectId: 'mahandemrider',
        messagingSenderId: '380530648235',
      );
    } else if (Platform.isIOS || Platform.isMacOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        appId: '1:380530648235:android:ab9b1835887ebd46e703ee',
        apiKey: 'AIzaSyB3LaM67UgNQOEtiyZPutLIbHhCNQdkXXM',
        projectId: 'mahandemrider',
        messagingSenderId: '380530648235',
        iosBundleId: 'io.flutter.plugins.firebasecoreexample',
      );
    } else {
      // Android
      return const FirebaseOptions(
        appId: '1:380530648235:android:ab9b1835887ebd46e703ee',
        apiKey: 'AIzaSyB3LaM67UgNQOEtiyZPutLIbHhCNQdkXXM',
        projectId: 'mahandemrider',
        messagingSenderId: '380530648235',
      );

    }
  }
}
