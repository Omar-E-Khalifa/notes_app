import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.onChanged,
    this.obscureValue = false,
    this.textInputType = TextInputType.multiline,
    this.onSubmited,
    this.borderColor = Colors.black,
    this.height = 60,
    this.hintColor = Colors.white30,
    this.textInputAction = TextInputAction.unspecified,
    this.cursorColor = Colors.white,
  });
  final String hintText;
  final Color hintColor;
  final Color borderColor;
  final Color cursorColor;
  final double height;
  final bool obscureValue; // true forces maxLines: 1 (Flutter limitation)
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final Function(String)? onChanged;
  final Function(String)? onSubmited;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: SizedBox(
        height: height,
        child: TextField(
          cursorColor: cursorColor,
          obscureText: obscureValue,
          keyboardType: textInputType,
          textInputAction: textInputAction,
          onChanged: onChanged,
          onSubmitted: onSubmited,
          maxLines: obscureValue //obscured Text can't work with null maxLines
              ? 1
              : null,
          expands: true,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
            enabledBorder: borderBuilder(1),
            focusedBorder: borderBuilder(2),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 20, color: hintColor),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder borderBuilder(double width) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: borderColor, width: width),
      borderRadius: BorderRadius.circular(6),
    );
  }
}
