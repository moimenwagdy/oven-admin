import 'package:flutter/material.dart';
import 'package:oven_admin/utils/helpers/reformat_date.dart';

class OrderDate extends StatelessWidget {
  final DateTime date;
  const OrderDate({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Row(children: [Text(reformateFullDate(context, date))]),
    );
  }
}
