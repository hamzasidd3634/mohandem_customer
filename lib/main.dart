import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mohandem_customer/Routes/app_pages.dart';
import 'package:mohandem_customer/Views/Home/Repo/homeBinding.dart';
import 'package:mohandem_customer/config.dart';
import 'package:permission_handler/permission_handler.dart';


const AndroidInitializationSettings initializationSettingsAndroid =
AndroidInitializationSettings('ic_launcher');

/// Note: permissions aren't requested here just to demonstrate that can be
/// done later
final IOSInitializationSettings initializationSettingsIOS =
IOSInitializationSettings(
  requestAlertPermission: false,
  requestBadgePermission: false,
  requestSoundPermission: false,
);

final InitializationSettings initializationSettings = InitializationSettings(
  android: initializationSettingsAndroid,
  iOS: initializationSettingsIOS,
);

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage? message) async {
  await GetStorage.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseConfig.platformOptions,
  );
}

late AndroidNotificationChannel channel;
RemoteMessage? backgroundMessage;

/// Initialize the [FlutterLocalNotificationsPlugin] package.
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseConfig.platformOptions,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await GetStorage.init();

  if (!kIsWeb) {
    channel = const AndroidNotificationChannel(
        'high_importance_channel', // id
        'High Importance Notifications', // title
        description:
        'This channel is used for important notifications.', // description
        importance: Importance.max,
        enableVibration: true);

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    /// Create an Android Notification Channel.
    ///
    /// We use this channel in the `AndroidManifest.xml` file to override the
    /// default FCM channel to enable heads up notifications.
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }
  List<Permission> permissionsNeeded = [
    Permission.camera,
    Permission.photos,
    Permission.storage,
    // Permission.mediaLibrary,
  ];
  // Map<Permission, PermissionStatus> statuses =

  await permissionsNeeded.request();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigatorKey = GlobalKey<NavigatorState>();


  getToken() async {
    var token = await FirebaseMessaging.instance.getToken();
    print(token);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getToken();
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);

    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) async {

    });
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      //TODO
    });

  }

  Future<dynamic> onSelectNotification(
      payload,
      ) async {}

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      builder: (context, child) {
        child = ScrollConfiguration(
          behavior: MyBehavior(),
          child: BotToastInit()(context, child),
        );
        child = SafeArea(top: false, child: child);

        return child;
      },
      // initialBinding: HomePageBinding(),
      navigatorObservers: [BotToastNavigatorObserver()],
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}


class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
