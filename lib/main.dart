import 'package:flutter/material.dart';
import 'package:notifications/screens/home_screen.dart';
import 'package:notifications/screens/message_screen.dart';
import 'package:notifications/services/push_notifications_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PushNotificationService.initializedApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldMessengerState> messengerKey =
      new GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Context!
    PushNotificationService.messageStream.listen((message) {
      // print('MyApp: $message');
      navigatorKey.currentState?.pushNamed('message', arguments: message);
      final snackBar = SnackBar(content: Text(message));
      messengerKey.currentState?.showSnackBar(snackBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      navigatorKey: navigatorKey, // Navigate
      scaffoldMessengerKey: messengerKey, // Snacks
      routes: {
        'home': (_) => HomeScreen(),
        'message': (_) => MessageScreen(),
      },
    );
  }
}
