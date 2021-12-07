import 'package:flutter/material.dart';
import 'package:movie_app/presentation/library/components/save_screen.dart';
import 'package:movie_app/presentation/library/components/user_comments_screen.dart';

class CommentHistory extends StatelessWidget {
  final bool isComment;
  const CommentHistory({Key? key, required this.isComment}) : super(key: key);

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
        title: Text(isComment ? "Comment History" : "Saved Mangas"),
      ),
      body: isComment ? const UserCommentsScreen() : const SaveScreen(),
    );
  }
}
