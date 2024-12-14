import 'package:flutter/material.dart';
import 'package:zerodha_clone/theme/app_colors.dart';

class AppTextFiled extends StatefulWidget {
  final String label;
  final String error;
  final TextEditingController controller;
  final bool isPassword;

  const AppTextFiled({
    super.key,
    required this.label,
    required this.controller,
    required this.error,
    this.isPassword = false,
  });

  @override
  State<AppTextFiled> createState() => _AppTextFiledState();
}

class _AppTextFiledState extends State<AppTextFiled> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword ? _isObscured : widget.isPassword,
      decoration: InputDecoration(
        labelText: widget.label,
        suffixIcon: IconButton(
          icon: Icon(
            widget.isPassword
                ? _isObscured
                    ? Icons.visibility
                    : Icons.visibility_off
                : Icons.person_2_outlined,
          ),
          onPressed: widget.isPassword
              ? () {
                  setState(() {
                    _isObscured = !_isObscured; // Toggle password visibility
                  });
                }
              : null,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: AppColors.dividerColor, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(4.0)), // Square corners for the enabled state
          borderSide: BorderSide(color: AppColors.dividerColor, width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(4.0)), // Square corners for the focused state
          borderSide: BorderSide(color: AppColors.dividerColor, width: 2.0),
        ),
      ),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return widget.error;
        }
        return null;
      },
    );
  }
}
