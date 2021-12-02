import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Shared/custom_button.dart';
import 'package:kap/Shared/custom_form.dart';
import 'package:kap/Widgets/payment_dialog.dart';

class OrderSummary extends StatefulWidget {
  static const routeName = '/OrderSummary';
  const OrderSummary({Key? key}) : super(key: key);

  @override
  _OrderSummaryState createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  String? title;
  String? subtitle;

  @override
  void didChangeDependencies() {
    final List? type = ModalRoute.of(context)!.settings.arguments as List?;
    title = type![0];
    subtitle = type[1];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar('Order Summary', Colors.black),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapSmall,
            const Text(
              'Your course',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            gapSmall,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              height: 80.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(8)),
              child: Text.rich(TextSpan(
                  text: title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  children: [
                    const TextSpan(text: '\n'),
                    TextSpan(
                        text: subtitle,
                        style: const TextStyle(
                            color: AppColors.someText,
                            fontSize: 14,
                            fontWeight: FontWeight.w400))
                  ])),
            ),
            gapSmall,
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                height: 30.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Total',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Text(
                      '₦25,000',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )
                  ],
                )),
            gapSmall,
            const Text(
              'Coupon code',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            gapSmall,
            const CustomForm(hintText: 'FREE100'),
            gapSmall,
            const Text(
              'Payment Method',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            gapSmall,
            const CustomForm(hintText: 'Mr John Smith'),
            gapSmall,
            const CustomForm(hintText: '4471 9903 7820 3065'),
            gapSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    child: const CustomForm(hintText: '12/22')),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    child: const CustomForm(hintText: '102')),
              ],
            ),
            gapLarge,
            CustomButton(
                function: () {
                  showDialog(
                      context: context,
                      builder: (context) => const PaymentDialog(
                            image: Icons.lock,
                            title: 'Level 1 unlocked',
                            subtitle: 'Your payment has been successfull',
                          ));
                },
                text: 'Pay now')
          ],
        ),
      ),
    );
  }
}
