import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:meta/meta.dart';

part 'fcm_state.dart';

class FcmCubit extends Cubit<FcmState> {
  FcmCubit() : super(FcmInitial()) {
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        _onNotificationPressedClosedApp(message);
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen(_onNotificationPressedOpenedApp);
    FirebaseMessaging.onMessage.listen(_onForeground);
  }

  void _onForeground(RemoteMessage message) {
    final data = message.data;
    switch (data['action_code']) {

    }
  }
  void _onNotificationPressedOpenedApp(RemoteMessage message) {
  }
  void _onNotificationPressedClosedApp(RemoteMessage message) {
  }
}
