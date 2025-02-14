import 'package:flutter/material.dart';

class CustomeTextFieldSearch extends StatelessWidget {
  const CustomeTextFieldSearch(
      {super.key,
      this.hintText,
      this.intialValue,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged,
      this.prefixIcon,
      this.onPressed,
      this.suffixIcon});
  final String? hintText;
  final String? intialValue;

  final int maxLines;
  final void Function()? onPressed;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
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
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        prefixIcon: IconButton(onPressed: onPressed, icon: Icon(prefixIcon)),
        suffixIcon: IconButton(onPressed: onPressed, icon: Icon(suffixIcon)),
        border: buildBulder(),
        enabledBorder: buildBulder(),
        focusedBorder: buildBulder(Colors.white),
        hintText: hintText,
      ),
    );
  }

  OutlineInputBorder buildBulder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
