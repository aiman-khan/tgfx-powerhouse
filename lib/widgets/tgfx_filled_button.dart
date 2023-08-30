import 'package:flutter/material.dart';

class TGFXFilledButton extends StatelessWidget {
  const TGFXFilledButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF269999), // Set the text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // Set the border radius
        ),
        minimumSize: const Size(109, 48),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
