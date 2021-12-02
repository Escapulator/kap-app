import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';

class TimingWidget<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final String label;
  final String text;
  final ValueChanged<T?> onChanged;
  const TimingWidget({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.label,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

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
      width: MediaQuery.of(context).size.width,
      height: 40.h,
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
            children: [
              _buildLabel(),
              gapSmall,
              _buildText(),
            ],
          ),
        ),
      ),
    );
  }
}
