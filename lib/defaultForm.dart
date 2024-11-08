import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmit,
  Function(String)? onChanged,
  VoidCallback? onTab,
  VoidCallback? suffixpressed,
  required String? Function(String?) validate,
  required Label,
  bool ispassword = false,
  required IconData prefix,
  IconData? suffix,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChanged,
      obscureText: ispassword,
      enabled: isClickable,
      onTap: onTab,
      validator: validate,
      decoration: InputDecoration(
          labelText: Label,
          suffixIcon: suffix != null
              ? IconButton(onPressed: suffixpressed, icon: Icon(suffix))
              : null,
          prefixIcon: Icon(prefix),
          border: const OutlineInputBorder()),
    );
