import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ErrorMessage extends StatelessWidget {
  final String message;
  final bool isSliver;
  const ErrorMessage({Key? key, required this.message, required this.isSliver})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSliver
        ? SliverToBoxAdapter(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Ionicons.warning_outline,
                    size: 40,
                  ),
                  Text(
                    message,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          )
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Ionicons.warning_outline,
                  size: 40,
                ),
                Text(
                  message,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                )
              ],
            ),
          );
  }
}
