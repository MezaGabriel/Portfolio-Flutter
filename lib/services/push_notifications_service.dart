// SHA1: 0A:C2:76:C6:50:91:6C:8A:FB:5D:9B:61:F7:60:52:C2:F3:D0:AD:B1

import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;
  static StreamController<String> _messageStream =
      new StreamController.broadcast();
  static Stream<String> get messageStream => _messageStream.stream;

  static Future _backgroundHandler(RemoteMessage message) async {
    // print('background Handler ${message.messageId}');
    print(message.data);
    _messageStream.add(message.data['product'] ?? 'No data');
  }

  static Future _onMessageHandler(RemoteMessage message) async {
    // print('onMessage Handler ${message.messageId}');
    print(message.data);
    _messageStream.add(message.data['product'] ?? 'No data');
  }

  static Future _onMessageOpenApp(RemoteMessage message) async {
    // print('onMessageOpenApp Handler ${message.messageId}');
    print(message.data);
    _messageStream.add(message.data['product'] ?? 'No data');
  }

  static Future initializedApp() async {
    // Push Notification

    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print('Token: ${token}');

    // Handlers
    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
    FirebaseMessaging.onMessage.listen(_onMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenApp);

    // Local Notification
  }

  static closeStreams() {
    _messageStream.close();
  }
}
