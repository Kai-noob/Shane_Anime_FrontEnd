import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<RemoteMessage> _messages = [];

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.instance.getInitialMessage();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      setState(() {
        _messages = [..._messages, message];
      });
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      setState(() {
        _messages = [..._messages, message];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_messages.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70.r,
            backgroundColor: const Color(0xff1B2C3B),
            child: Icon(Icons.notifications_outlined,
                color: Colors.white, size: 80.w),
          ),
          const SizedBox(height: 20),
          const Text(
            "No Notifications",
            style: TextStyle(fontSize: 18),
          )
        ],
      );
    }

    return ListView.builder(
        shrinkWrap: true,
        itemCount: _messages.length,
        itemBuilder: (context, index) {
          RemoteMessage message = _messages[index];

          return ListTile(
            title: Text(
                message.messageId ?? 'no RemoteMessage.messageId available'),
            subtitle:
                Text(message.sentTime?.toString() ?? DateTime.now().toString()),
            // onTap: () => Navigator.pushNamed(context, '/message',
            //     arguments: MessageArguments(message, false)),
          );
        });
  }
}
