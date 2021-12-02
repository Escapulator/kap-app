import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';

class RadioButton<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final String label;
  final String text;
  final ValueChanged<T?> onChanged;
  final double width;
  const RadioButton(
      {Key? key,
      required this.value,
      required this.groupValue,
      required this.label,
      required this.text,
      required this.onChanged,
      required this.width})
      : super(key: key);

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    return Container(
      width: 30,
      height: 30,
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(
              color: isSelected ? AppColors.orange : const Color(0xFFECECEC),
              width: 4),
        ),
        color: AppColors.backgroundColor,
      ),
    );
  }

  Widget _buildText() {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFECECEC), width: 2)),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () => onChanged(value),
        splashColor: Colors.cyan.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildText(),
              const SizedBox(width: 10),
              _buildLabel(),
            ],
          ),
        ),
      ),
    );
  }
}
