import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:startapp/startapp.dart';
import '../../library/components/save_screen.dart';
import '../../library/components/user_comments_screen.dart';

class CommentHistory extends StatefulWidget {
  final bool isComment;
  const CommentHistory({Key? key, required this.isComment}) : super(key: key);

  @override
  _CommentHistoryState createState() => _CommentHistoryState();
}

class _CommentHistoryState extends State<CommentHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(widget.isComment ? "Comment History" : "Saved Mangas"),
      ),
      body: widget.isComment ? const UserCommentsScreen() : const SaveScreen(),
      bottomNavigationBar: AdBanner(),
    );
  }
}
