import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oven_admin/utils/helpers/screen_dimensions.dart';

String reformatDate(BuildContext context, DateTime date) {
  final locale = Localizations.localeOf(context).toString();

  if (context.isArabic) {
    return DateFormat("dd MMM yyyy", locale).format(date);
  }

  return DateFormat("dd MMM yyyy", locale).format(date);
}



String reformateFullDate(BuildContext context, DateTime date) {
  final locale = Localizations.localeOf(context).toString();

  if (context.isArabic) {
    return DateFormat("dd MMM yyyy - hh:mm", locale).format(date);
  }

  return DateFormat("dd MMM yyyy - hh:mm", locale).format(date);
}
