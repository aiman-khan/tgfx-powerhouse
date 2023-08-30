import 'package:flutter/material.dart';

class TGFXOutlinedButton extends StatelessWidget {
  const TGFXOutlinedButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          side: const BorderSide(
            color: Color(0xFFD0D5DD),
          ),
          backgroundColor: Colors.white,
          minimumSize: const Size(38, 38)),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF344054),
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
