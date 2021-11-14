import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/application/auth/bloc/auth_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text("My Account"),
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 45,
                      child: Icon(Icons.person),
                    ),
                    Positioned(
                        right: 0,
                        top: 30,
                        left: 50,
                        bottom: 0,
                        child: IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {},
                        ))
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Nay Yair Linn",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            const SizedBox(height: 20),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Name",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Nay Yair Linn",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.edit_outlined))
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Email",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "linnayye557@gmail.com",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.edit_outlined))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Ionicons.bookmark_outline),
                    title: Text("Saved"),
                  ),
                  ListTile(
                      leading: Icon(Ionicons.chatbox_ellipses_outline),
                      title: Text("My Comments")),
                  ListTile(
                      leading: Icon(Ionicons.notifications_outline),
                      title: Text("Notifications")),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: const [
                  ListTile(
                      leading: Icon(Ionicons.shield_checkmark_outline),
                      title: Text("Privacy")),
                  ListTile(
                      leading: Icon(Ionicons.apps_outline),
                      title: Text("Family Apps")),
                  ListTile(
                      leading: Icon(Ionicons.share_social_outline),
                      title: Text("Share")),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                  onTap: () => BlocProvider.of<AuthBloc>(context)
                    ..add(AuthEvent.signOut()),
                  leading: Icon(Ionicons.log_out_outline),
                  title: Text("Sign Out")),
            ),
          ],
        ));
  }
}
