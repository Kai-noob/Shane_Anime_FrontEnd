import 'package:flutter/material.dart';

class HomeTitleWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const HomeTitleWidget({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              onTap: onTap,
              child: const Text(
                "See all",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
