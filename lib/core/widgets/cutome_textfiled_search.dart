import 'package:flutter/material.dart';

class CustomeTextFieldSearch extends StatelessWidget {
  const CustomeTextFieldSearch({
    super.key,
    this.hintText,
    this.intialValue,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
    this.prefixIcon,
    this.onPressedPrefix,
    this.onPressedSuffix,
    this.suffixIcon,
    this.onSubmited,
  });
  final String? hintText;
  final String? intialValue;

  final int maxLines;
  final void Function()? onPressedPrefix;
  final void Function()? onPressedSuffix;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmited;

  final IconData? prefixIcon;
  final IconData? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      initialValue: intialValue,
      onChanged: onChanged,
      onFieldSubmitted: onSubmited,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        prefixIcon: prefixIcon != null
            ? IconButton(onPressed: onPressedPrefix, icon: Icon(prefixIcon))
            : null,
        suffixIcon: suffixIcon != null
            ? IconButton(onPressed: onPressedSuffix, icon: Icon(suffixIcon))
            : null,
        border: buildBulder(),
        enabledBorder: buildBulder(),
        focusedBorder: buildBulder(),
        hintText: hintText,
      ),
    );
  }

  OutlineInputBorder buildBulder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
      borderSide: BorderSide(),
    );
  }
}
