import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';

class CustomDropDown extends StatefulWidget {
  final String? value1;
  final String? value2;
  const CustomDropDown({Key? key, this.value1, this.value2}) : super(key: key);

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? _mySelection;

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
        contentPadding: const EdgeInsets.all(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _mySelection,
          //elevation: 5,
          style: const TextStyle(
            fontSize: 12,
          ),
          icon: const Icon(
            Icons.expand_more,
            color: Colors.black,
          ),
          hint: Text(
            widget.value1!,
            style: const TextStyle(
                color: AppColors.someText,
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          items: <String>[
            widget.value1!,
            widget.value2!,
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(
                value,
                style: const TextStyle(
                    color: AppColors.someText,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            );
          }).toList(),
          onChanged: (newVal) {
            setState(() {
              _mySelection = newVal;
            });
          },
        ),
      ),
    );
  }
}
