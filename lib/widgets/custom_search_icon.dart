import 'package:flutter/material.dart';

class CustomAppbarIcon extends StatelessWidget {
  const CustomAppbarIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {},
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white.withValues(alpha: 0.05),
        ),
        child: Center(
          child: Icon(
            icon,
          ),
        ),
      ),
    );
  }
}
