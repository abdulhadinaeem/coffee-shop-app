import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onDragStart: (details) {},
      onClosing: () {},
      builder: (context) => Container(
        color: Colors.white,
      ),
    );
  }
}
