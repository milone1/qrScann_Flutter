import 'package:flutter/material.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.filter_center_focus_rounded),
      onPressed: () {},
    );
  }
}
