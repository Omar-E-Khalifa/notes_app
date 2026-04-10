import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      shape: CircleBorder(),
      backgroundColor: Colors.cyan,
      foregroundColor: Colors.black,
      child: Icon(
        Icons.add,
      ),
    );
  }
}
