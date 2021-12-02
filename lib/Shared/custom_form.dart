import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';

class CustomForm extends StatefulWidget {
  final String? hintText;
  final bool? password;

  final TextInputType? textInputType;
  final String? validationMessage;
  final Function(String)? onChanged;
  final int? maxLines;
  final TextEditingController? controller;
  const CustomForm({
    Key? key,
    this.hintText,
    this.controller,
    this.password,
    this.maxLines = 1,
    this.textInputType,
    this.onChanged,
    this.validationMessage,
  }) : super(key: key);

  @override
  _CustomFormState createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.backgroundColor,
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(color: AppColors.borderColor, width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(color: AppColors.orange, width: 1)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(color: AppColors.borderColor, width: 1)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(color: AppColors.borderColor, width: 1)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(color: AppColors.borderColor, width: 1)),
            contentPadding: const EdgeInsets.only(left: 8, top: 15),
            hintText: widget.hintText),
        validator: (value) {
          return value!.isEmpty ? 'Enter your email address' : null;
        },
        maxLines: widget.maxLines,
        controller: widget.controller,
        keyboardType: widget.textInputType,
      ),
    );
  }
}
