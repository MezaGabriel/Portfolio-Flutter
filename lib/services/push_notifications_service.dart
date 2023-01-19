// SHA1: 0A:C2:76:C6:50:91:6C:8A:FB:5D:9B:61:F7:60:52:C2:F3:D0:AD:B1

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;

  static Future initializedApp() async {
    // Push Notification

    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print(token);

    // Local Notification
  }
}
