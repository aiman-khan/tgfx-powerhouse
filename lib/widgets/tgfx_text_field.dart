import 'package:flutter/material.dart';

class TGFXTextField extends StatelessWidget {
  const TGFXTextField({
    super.key,
    this.hintText,
    this.validator,
    this.maxLines,
  });

  final String? hintText;
  final String Function(String?)? validator;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      maxLines: maxLines ?? null,
      decoration: InputDecoration(
        hintText: hintText ?? "",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0), // Set the border radius
          borderSide: BorderSide(
            color: Color(0xFFD0D5DD), // Set the border color
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: Color(0xFFD0D5DD), // Set the border color
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: Color(0xFFD0D5DD), // Set the border color
          ),
        ),
      ),
    );
  }
}
