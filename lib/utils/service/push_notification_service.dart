import 'dart:async';
import 'dart:convert';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class ReceivedNotification {
  ReceivedNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.payload,
  });

  final int id;
  final String? title;
  final String? body;
  final String? payload;
}

class PushNotificationService extends GetxService {
  StreamSubscription? onMessageListener;
  StreamSubscription? onMessageOpenedAppListener;
  static const String darwinNotificationCategoryPlain = 'plainCategory';
  // Defines a iOS/MacOS notification category for text input actions.
  static const String darwinNotificationCategoryText = 'textCategory';
  static const String navigationActionId = 'id_3';

  final StreamController<ReceivedNotification>
      didReceiveLocalNotificationStream =
      StreamController<ReceivedNotification>.broadcast();

  final _localNotification = FlutterLocalNotificationsPlugin();
  final _firebaseMessaging = FirebaseMessaging.instance;
  final List<DarwinNotificationCategory> darwinNotificationCategories =
      <DarwinNotificationCategory>[
    DarwinNotificationCategory(
      darwinNotificationCategoryText,
      actions: <DarwinNotificationAction>[
        DarwinNotificationAction.text(
          'text_1',
          'Action 1',
          buttonTitle: 'Send',
          placeholder: 'Placeholder',
        ),
      ],
    ),
    DarwinNotificationCategory(
      darwinNotificationCategoryPlain,
      actions: <DarwinNotificationAction>[
        DarwinNotificationAction.plain('id_1', 'Action 1'),
        DarwinNotificationAction.plain(
          'id_2',
          'Action 2 (destructive)',
          options: <DarwinNotificationActionOption>{
            DarwinNotificationActionOption.destructive,
          },
        ),
        DarwinNotificationAction.plain(
          navigationActionId,
          'Action 3 (foreground)',
          options: <DarwinNotificationActionOption>{
            DarwinNotificationActionOption.foreground,
          },
        ),
        DarwinNotificationAction.plain(
          'id_4',
          'Action 4 (auth required)',
          options: <DarwinNotificationActionOption>{
            DarwinNotificationActionOption.authenticationRequired,
          },
        ),
      ],
      options: <DarwinNotificationCategoryOption>{
        DarwinNotificationCategoryOption.hiddenPreviewShowTitle,
      },
    )
  ];
  Future<String?> get fcmToken {
    return _firebaseMessaging.getToken();
  }

  void listenNotification() async {
    await _firebaseMessaging.requestPermission(badge: false);
    _configLocalNotification();

    onMessageListener =
        FirebaseMessaging.onMessage.listen(_handleNotificationOnForeground);
    onMessageOpenedAppListener = FirebaseMessaging.onMessageOpenedApp
        .listen(_handleNotificationOnBackground);
  }

  void cancelNotification() {
    onMessageListener?.cancel();
    onMessageOpenedAppListener?.cancel();
  }

  void handleNotificationOnTerminal() {
    _firebaseMessaging.getInitialMessage().then((message) {});
  }

  void _configLocalNotification() async {
    const initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
      onDidReceiveLocalNotification:
          (int id, String? title, String? body, String? payload) async {
        didReceiveLocalNotificationStream.add(
          ReceivedNotification(
            id: id,
            title: title,
            body: body,
            payload: payload,
          ),
        );
      },
      notificationCategories: darwinNotificationCategories,
    );
    final initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    await _localNotification.initialize(
      initializationSettings,
      // onSelectNotification: _handleLocalNotification,
    );
  }

  Future<void> _showLocalNotification({
    required String title,
    required String body,
    required String payload,
  }) async {
    const androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'fcm_default_channel_id',
      'fcm_default_channel_name',
      channelDescription: 'fcm_default_channel_description',
    );
    const DarwinNotificationDetails iosNotificationDetails =
        DarwinNotificationDetails(
      categoryIdentifier: darwinNotificationCategoryPlain,
    );
    const platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iosNotificationDetails,
    );
    await _localNotification.show(
      0,
      title,
      body,
      platformChannelSpecifics,
      payload: payload,
    );
  }

  void _handleNotificationOnBackground(RemoteMessage message) {
    // L.debug('Got a message in the background!');
    // L.debug('Message data: ${message.data}');
  }

  void _handleNotificationOnForeground(RemoteMessage message) {
    // L.debug('Got a message whilst in the foreground!');
    // L.debug('Message data: ${message.data}');

    if (message.notification != null) {
      _showLocalNotification(
        title: message.notification?.title ?? '',
        body: message.notification?.body ?? '',
        payload: json.encode(message.data),
      );
    }
  }

  // Future<void> _handleLocalNotification(String? payload) async {
  //   if (payload != null) {
  //     final data = json.decode(payload);
  //     L.debug('onTapMessage: $data');
  //   }
  // }
}
